output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "web_alb_dns" {
  description = "DNS name of the web application load balancer"
  value       = module.web.alb_dns_name
}

output "db_endpoint" {
  description = "Connection endpoint for the database"
  value       = module.db.endpoint
}

output "web_asg_name" {
  description = "Name of the web tier auto scaling group"
  value       = module.web.asg_name
}

output "app_asg_name" {
  description = "Name of the application tier auto scaling group"
  value       = module.app.asg_name
}