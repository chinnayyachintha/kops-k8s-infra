output "route53_domain_name" {
  description = "The domain name managed by Route 53"
  value       = module.route53.domain_name
}

output "iam_role_arn" {
  description = "The ARN of the created IAM role"
  value       = module.iam_role.iam_role_arn
}

output "iam_group_name" {
  description = "The name of the created IAM group"
  value       = module.iam_role.iam_group_name
}

output "s3_bucket_name" {
  description = "The name of the created S3 bucket"
  value       = module.s3.s3_bucket_name
}

output "dynamodb_table_name" {
  description = "The name of the created DynamoDB table"
  value       = module.dynamodb.dynamodb_table_name
}

output "vpc_id" {
  description = "The ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.vpc.public_subnet_id
}

output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.ec2.instance_id
}

output "ec2_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = module.ec2.public_ip
}
