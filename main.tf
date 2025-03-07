provider "aws" {
  region = var.region
}

# VPC
module "vpc" {
  source      = "./modules/vpc"
  environment = var.environment
  vpc_cidr    = var.vpc_cidr
}

# Web tier containing web servers and alb
module "web" {
  source             = "./modules/web"
  vpc_id             = module.vpc.vpc_id
  public_subnet_ids  = module.vpc.public_subnet_ids
  environment        = var.environment
  instance_type      = var.web_instance_type
  min_size          = var.web_min_size
  max_size          = var.web_max_size
  desired_capacity  = var.web_desired_capacity
}

# Application tier containing app servers and alb
module "app" {
  source                = "./modules/app"
  vpc_id                = module.vpc.vpc_id
  private_subnet_ids    = module.vpc.private_subnet_ids
  environment           = var.environment
  instance_type         = var.app_instance_type
  min_size             = var.app_min_size
  max_size             = var.app_max_size
  desired_capacity      = var.app_desired_capacity
  web_security_group_id = module.web.security_group_id
}

# Database tier containing RDS
module "db" {
  source               = "./modules/db"
  vpc_id               = module.vpc.vpc_id
  database_subnet_ids  = module.vpc.database_subnet_ids
  environment          = var.environment
  db_instance_class    = var.db_instance_class
  db_name             = var.db_name
  db_username         = var.db_username
  db_password         = var.db_password
  app_security_group_id = module.app.security_group_id
}