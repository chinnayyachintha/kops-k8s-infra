# AWS Region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "aws_availability_zone" {
  description = "Availability zone"
  type        = string
}

# Project Name
variable "project_name" {
  description = "Project name identifier"
  type        = string
}

# VPC Configuration
variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for Public Subnet"
  type        = string
}

# S3 and DynamoDB Table for State Storage
variable "s3_bucket_name" {
  description = "S3 bucket name for Terraform and Kubernetes state storage"
  type        = string
}

variable "dynamodb_table_name" {
  description = "DynamoDB table name for state locking"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, prod)"
  type        = string
}

# Route 53 Configuration
variable "domain_name" {
  description = "Domain name for the hosted zone"
  type        = string
}

# EC2 Configuration
variable "iam_instance_profile" {
  description = "IAM instance profile to attach to the EC2 instance"
  type        = string
}

variable "security_group_id" {
  description = "ID of the security group to attach"
  type        = string
}

variable "values" {
  description = "AMI name filter values"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in"
  type        = string
}

variable "public_key_location" {
  description = "Path to the public key file"
  type        = string
}

# IAM Role Configuration
variable "iam_role_name" {
  description = "IAM Role name for Kops"
  type        = string
}

variable "iam_group_name" {
  description = "IAM Group name for Kops users"
  type        = string
}

variable "managed_policies" {
  description = "List of managed policies to attach to the IAM group"
  type        = list(string)
  default = [
    "arn:aws:iam::aws:policy/AmazonEC2FullAccess",
    "arn:aws:iam::aws:policy/AmazonRoute53FullAccess",
    "arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "arn:aws:iam::aws:policy/IAMFullAccess",
    "arn:aws:iam::aws:policy/AmazonVPCFullAccess",
    "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
  ]
}
