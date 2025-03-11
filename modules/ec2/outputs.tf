output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.my-app-server.id
}

output "public_ip" {
  description = "The public IP address of the instance"
  value       = aws_instance.my-app-server.public_ip
}

output "private_ip" {
  description = "The private IP address of the instance"
  value       = aws_instance.my-app-server.private_ip
}
