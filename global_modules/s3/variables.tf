variable "s3_bucket_name" {
  description = "S3 bucket name for Terraform and Kubernetes state storage"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, prod)"
  type        = string
}
