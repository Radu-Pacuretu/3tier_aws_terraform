output "security_group_id" {
  description = "ID of the application tier security group"
  value       = aws_security_group.app.id
}

output "asg_name" {
  description = "Name of the application tier auto scaling group"
  value       = aws_autoscaling_group.app.name
}

output "alb_dns_name" {
  description = "DNS name of the internal application load balancer"
  value       = aws_lb.app.dns_name
}