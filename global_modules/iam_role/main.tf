# Create IAM Role for Kops
resource "aws_iam_role" "kops_role" {
  name = var.iam_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })

  tags = {
    Name        = var.iam_role_name
    Environment = var.environment
  }
}

# Create IAM Group for Kops
resource "aws_iam_group" "kops_group" {
  name = var.iam_group_name
}

# Attach IAM Role to Group
resource "aws_iam_group_policy_attachment" "kops_policies" {
  count      = length(var.managed_policies)
  group      = aws_iam_group.kops_group.name
  policy_arn = var.managed_policies[count.index]
}
