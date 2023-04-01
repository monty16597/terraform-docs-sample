output "function_name" {
  value       = var.function_name
  description = "Function name"
}

output "arn" {
  value       = aws_lambda_function.lambda.arn
  description = "AWS ARN for the function"
}

output "iam_assume_role_name" {
  value       = aws_iam_role.iam_for_lambda.name
  description = "Name of the IAM assume role"
}

output "iam_assume_role_arn" {
  value       = aws_iam_role.iam_for_lambda.arn
  description = "AWS ARN for the IAM assume role"
}

output "function_invoke_arn" {
  value       = aws_lambda_function.lambda.invoke_arn
  description = "Function invocation ARN for API GW"
}

output "function_published_verion" {
  value       = aws_lambda_function.lambda.version
  description = "Published version of the function"
}
