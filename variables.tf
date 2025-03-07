variable "region" {
  description = "AWS region to deploy"
  type        = string
  default     = "eu-central-1"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Web tier variables
variable "web_instance_type" {
  description = "Instance type for web servers"
  type        = string
  default     = "t3.micro"
}

variable "web_min_size" {
  description = "Minimum size for web tier ASG"
  type        = number
  default     = 2
}

variable "web_max_size" {
  description = "Maximum size for web tier ASG"
  type        = number
  default     = 4
}

variable "web_desired_capacity" {
  description = "Desired capacity for web tier ASG"
  type        = number
  default     = 2
}

# App tier variables
variable "app_instance_type" {
  description = "Instance type for application servers"
  type        = string
  default     = "t3.micro"
}

variable "app_min_size" {
  description = "Minimum size for app tier ASG"
  type        = number
  default     = 2
}

variable "app_max_size" {
  description = "Maximum size for app tier ASG"
  type        = number
  default     = 4
}

variable "app_desired_capacity" {
  description = "Desired capacity for app tier ASG"
  type        = number
  default     = 2
}

# Database variables
variable "db_instance_class" {
  description = "Instance class for RDS"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Name of the database"
  type        = string
  default     = "webdb"
}

variable "db_username" {
  description = "Database master username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Database master password"
  type        = string
  sensitive   = true
}