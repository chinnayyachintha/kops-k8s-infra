module "route53" {
  source      = "./../../global/route53"
  domain_name = var.domain_name
  environment = var.environment
}

module "iam_role" {
  source           = "./../../global/iam_role"
  iam_role_name    = var.iam_role_name
  iam_group_name   = var.iam_group_name
  environment      = var.environment
  managed_policies = var.managed_policies
}

module "s3" {
  source         = "./../../global/s3"
  s3_bucket_name = var.s3_bucket_name
  environment    = var.environment
}

module "dynamodb" {
  source              = "./../../modules/dynamodb"
  dynamodb_table_name = var.dynamodb_table_name
  environment         = var.environment
}

module "vpc" {
  source                = "./../../modules/vpc"
  aws_region            = var.aws_region
  aws_availability_zone = var.aws_availability_zone
  project_name          = var.project_name
  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr    = var.public_subnet_cidr
}

module "ec2" {
  source               = "./../../modules/ec2"
  iam_instance_profile = var.iam_instance_profile
  security_group_id    = module.vpc.security_group_id
  values               = var.values
  instance_type        = var.instance_type
  subnet_id            = module.vpc.public_subnet_id
  public_key_location  = var.public_key_location
}
