variable "region"         { default = "ap-south-1" }
variable "project"        { default = "practice" }
variable "env"            { default = "dev" }
variable "vpc_cidr"       { default = "10.0.0.0/16" }
variable "public_subnets" { default = ["10.0.1.0/24", "10.0.2.0/24"] }
variable "private_subnets" { default = ["10.0.3.0/24","10.0.4.0/24" ]}


#RDS VARIABLES Values for rds modules
variable "rds_allocated_storage" {default = 20}
variable "rds_engine" {default = "mysql" }
variable "rds_engine_version" { default = "8.0.28" }
variable "rds_instance_class" { default = "db.t3.micro"}
variable "rds_db_name" { default = "mydatabase" }
variable "rds_username" { default = "admin" }
variable "rds_password" { default = "Admin12345" }
variable "rds_parameter_group_name" { default = "default.mysql8.0" }
variable "rds_security_group_id" {  default = "" }
variable "rds_subnet_group_name" { default = "" }
variable "rds_multi_az" { default = false }



# ECR VARIABLES
variable "ecr_repo_name" { default = "my-ecr-repo" }
