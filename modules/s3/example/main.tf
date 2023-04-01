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