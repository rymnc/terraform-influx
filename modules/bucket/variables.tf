variable "bucket_name" {
  description = "The name of the bucket to create"
  type        = string
}

variable "bucket_description" {
  description = "The description of the bucket to create"
  type        = string
}

variable "org_id" {
  description = "The ID of the organization to create the bucket in"
  type        = string
}

variable "retention_days" {
  description = "The number of days to retain data in the bucket"
  type        = number
  default     = 30
}

