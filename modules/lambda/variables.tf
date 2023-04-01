variable "function_name" {
  type        = string
  description = "Name of the function"
}

variable "index_file_path" {
  type        = string
  description = "Path of index.js file"
}

variable "tags" {
  type        = map(string)
  description = "Required tags"
  default     = {}
}
