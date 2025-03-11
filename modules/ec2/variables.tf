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

variable "project_name" {
  description = "Project name identifier"
  default     = "my-project"
}

variable "user_data" {
  description = "Path to the user data script file"
  type        = string
}

variable "public_key_location" {
  description = "Path to the public key file"
  type        = string
}
