output "security_group_id" {
  description = "ID of the web tier security group"
  value       = aws_security_group.web.id
}

output "alb_dns_name" {
  description = "DNS name of the application load balancer"
  value       = aws_lb.web.dns_name
}

output "asg_name" {
  description = "Name of the web tier auto scaling group"
  value       = aws_autoscaling_group.web.name
}