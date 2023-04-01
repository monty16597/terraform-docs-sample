module "function_example_1" {
  source          = "./modules/lambda/"
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

module "s3_example_1" {
  source      = "./modules/s3/"
  bucket_name = "example"
  tags = {
    "Organisation" = "Org1"
    "Owner"        = "abc@example.com"
    "Creator"      = "abc@example.com"
    "Description"  = "For testing purpose"
    "Enivornment"  = "Stage"
  }
}