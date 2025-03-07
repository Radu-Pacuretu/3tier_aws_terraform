variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where resources will be created"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "min_size" {
  description = "Minimum size for the auto scaling group"
  type        = number
}

variable "max_size" {
  description = "Maximum size for the auto scaling group"
  type        = number
}

variable "desired_capacity" {
  description = "Desired capacity for the auto scaling group"
  type        = number
}

variable "web_security_group_id" {
  description = "Security group ID of the web tier"
  type        = string
}
#Get the latest AMI
data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}
