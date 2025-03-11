output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = aws_subnet.public_subnet.id
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.igw.id
}

output "route_table_id" {
  description = "Public Route Table ID"
  value       = aws_route_table.public_rt.id
}

output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.public_sg.id
}
