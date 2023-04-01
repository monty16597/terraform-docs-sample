locals {
  common_tags = {
    "Bucket Name" = var.bucket_name
    "Terraform"   = true
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags   = merge(local.common_tags, var.tags)
}

resource "aws_s3_bucket_acl" "private" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
