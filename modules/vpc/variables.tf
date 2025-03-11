variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "aws_availability_zone" {
  description = "Availability zone"
  default     = "us-east-1a"
}

variable "project_name" {
  description = "Project name identifier"
  default     = "my-project"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for Public Subnet"
  default     = "10.0.1.0/24"
}
