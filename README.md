# 3 Tier Architecture with Terraform for AWS

This is ment to be an exercise and does not represent a production ready project. It implements a scalable three-tier architecture on AWS using Terraform. The architecture consists of web, application, and database tiers with proper networking and security configurations.

## Architecture Overview

### Web Tier

- **Components:** Application Load Balancer (ALB) + Auto Scaling Group (ASG)
- **Placement:** Public subnets across multiple Availability Zones
- **Purpose:** Handles inbound traffic from the internet and forwards requests to the application layer

### Application Tier

- **Components:** Internal Load Balancer + Auto Scaling Group (ASG)
- **Placement:** Private subnets across multiple Availability Zones
- **Purpose:** Processes business logic and communicates with the database layer

### Database Tier

- **Components:** RDS (Relational Database Service)
- **Placement:** Private subnets
- **Purpose:** Stores and manages application data securely

## Features

- VPC with public and private subnets across multiple AZs
- Auto Scaling Groups for web and application tiers
- Application Load Balancer for the web and application tiers
- RDS instance in private subnets
- Security groups controlling access between tiers
