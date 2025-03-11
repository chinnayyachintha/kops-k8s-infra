# Create Route 53 Hosted Zone
resource "aws_route53_zone" "primary" {
  name = var.domain_name

  tags = {
    Name        = var.domain_name
    Environment = var.environment
  }
}
