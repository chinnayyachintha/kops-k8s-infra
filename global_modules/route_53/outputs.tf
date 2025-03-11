output "hosted_zone_id" {
  description = "The ID of the hosted zone"
  value       = aws_route53_zone.primary.zone_id
}

output "name_servers" {
  description = "List of name servers for the hosted zone"
  value       = aws_route53_zone.primary.name_servers
}
