variable "iam_role_name" {
  description = "IAM Role name for Kops"
  type        = string
}

variable "iam_group_name" {
  description = "IAM Group name for Kops users"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
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
