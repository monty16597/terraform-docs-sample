<!-- BEGIN_TF_DOCS -->
# Usage

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.61.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.private](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/s3_bucket_acl) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name of the bucket | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Required tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | AWS ARN for the bucket |
| <a name="output_bucket_domain_name"></a> [bucket\_domain\_name](#output\_bucket\_domain\_name) | Generic domain of the bucket (i.e. bucket-name.s3.amazonaws.com) |
| <a name="output_bucket_regional_domain_name"></a> [bucket\_regional\_domain\_name](#output\_bucket\_regional\_domain\_name) | Regional domain of the bucket (i.e. bucket-name.s3.region-code.amazonaws.com) |
| <a name="output_id"></a> [id](#output\_id) | Bucket name |

## Example

```hcl
module "s3_testing" {
  source      = "../"
  bucket_name = "testing"
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