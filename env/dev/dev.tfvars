# AWS Region and Availability Zone
aws_region            = "us-east-1"
aws_availability_zone = "us-east-1a"

# Project and Environment Configuration
project_name = "kops-k8s"
environment  = "dev"

# VPC Configuration
vpc_cidr           = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"

# S3 and DynamoDB Backend Configuration
s3_bucket_name      = "kops-state-bucket"
dynamodb_table_name = "kops-terraform-lock"

# Route 53 Domain Configuration
domain_name = "dev.example.com"

# EC2 Instance Configuration
iam_instance_profile = "dev-ec2-instance-profile"
values               = ["ubuntu", "x86_64"]
instance_type        = "t2.micro"
public_key_location  = "/.ssh/my-key.pub"

# IAM Role and Group Configuration
iam_role_name  = "dev-iam-role"
iam_group_name = "dev-iam-group"        