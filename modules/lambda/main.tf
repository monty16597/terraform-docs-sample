data "aws_region" "current" {}

data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

locals {
  common_tags = {
    "Function Name" = var.function_name
    "Region"        = data.aws_region.current.name
    "Terraform"     = true
  }
}

resource "aws_iam_role" "iam_for_lambda" {
  name               = format("lambda-assume-role-%s-%s", data.aws_region.current.name, var.function_name)
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  tags               = merge(local.common_tags, var.tags)
}

data "archive_file" "lambda" {
  type        = "zip"
  source_file = var.index_file_path
  output_path = "lambda_function_payload.zip"
}

resource "aws_lambda_function" "lambda" {
  # If the file is not in the current working directory you will need to include a
  # path.module in the filename.
  filename      = "lambda_function_payload.zip"
  function_name = var.function_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "index.test"

  source_code_hash = data.archive_file.lambda.output_base64sha256

  runtime = "nodejs16.x"
  tags    = merge(local.common_tags, var.tags)
}