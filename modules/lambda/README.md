<!-- BEGIN_TF_DOCS -->
# Usage



## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | n/a |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.61.0 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.61.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | Name of the function | `string` | n/a | yes |
| <a name="input_index_file_path"></a> [index\_file\_path](#input\_index\_file\_path) | Path of index.js file | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Required tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | AWS ARN for the function |
| <a name="output_function_invoke_arn"></a> [function\_invoke\_arn](#output\_function\_invoke\_arn) | Function invocation ARN for API GW |
| <a name="output_function_name"></a> [function\_name](#output\_function\_name) | Function name |
| <a name="output_function_published_verion"></a> [function\_published\_verion](#output\_function\_published\_verion) | Published version of the function |
| <a name="output_iam_assume_role_arn"></a> [iam\_assume\_role\_arn](#output\_iam\_assume\_role\_arn) | AWS ARN for the IAM assume role |
| <a name="output_iam_assume_role_name"></a> [iam\_assume\_role\_name](#output\_iam\_assume\_role\_name) | Name of the IAM assume role |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.iam_for_lambda](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/iam_role) | resource |
| [aws_lambda_function.lambda](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/lambda_function) | resource |
| [archive_file.lambda](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |
| [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/data-sources/region) | data source |

# Examples

```hcl
module "function_testing" {
  source          = "../"
  function_name   = "testing"
  index_file_path = format("%s/index.js", path.module)
  tags = {
    "Organisation" = "Org1"
    "Owner"        = "abc@example.com"
    "Creator"      = "abc@example.com"
    "Description"  = "For testing purpose"
    "Enivornment"  = "Stage"
  }
}
```


<!-- END_TF_DOCS -->