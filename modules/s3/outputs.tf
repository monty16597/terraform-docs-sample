output "id" {
  value = aws_s3_bucket.bucket.id
  description = "Bucket name"
}

output "arn" {
  value = aws_s3_bucket.bucket.arn
  description = "AWS ARN for the bucket"
}

output "bucket_domain_name" {
  value = aws_s3_bucket.bucket.bucket_domain_name
  description = "Generic domain of the bucket (i.e. bucket-name.s3.amazonaws.com)"
}

output "bucket_regional_domain_name" {
  value = aws_s3_bucket.bucket.bucket_regional_domain_name
  description = "Regional domain of the bucket (i.e. bucket-name.s3.region-code.amazonaws.com)"
}
