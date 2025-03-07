region = "eu-central-1"
environment = "dev"
vpc_cidr = "10.0.0.0/16"

# Web tier
web_instance_type = "t3.micro"
web_min_size = 2
web_max_size = 4
web_desired_capacity = 2

# App tier
app_instance_type = "t3.micro"
app_min_size = 2
app_max_size = 4
app_desired_capacity = 2

# Database
db_instance_class = "db.t3.micro"
db_name = "myapp"
db_username = "admin"
db_password = "securepassword1234"  # Passwords should be managed thorugh a secret management service such as Vault, this is just for demo purposes