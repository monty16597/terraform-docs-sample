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