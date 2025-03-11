output "iam_role_arn" {
  description = "The ARN of the created IAM Role"
  value       = aws_iam_role.kops_role.arn
}

output "iam_group_name" {
  description = "The name of the IAM Group"
  value       = aws_iam_group.kops_group.name
}
