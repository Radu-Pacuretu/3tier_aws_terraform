output "endpoint" {
  description = "Connection endpoint for the RDS instance"
  value       = aws_db_instance.main.endpoint
}

output "security_group_id" {
  description = "ID of the database tier security group"
  value       = aws_security_group.db.id
}