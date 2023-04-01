variable "bucket_name" {
  type        = string
  description = "Name of the bucket"
}

variable "tags" {
  type        = map(string)
  description = "Required tags"
  default     = {}
}