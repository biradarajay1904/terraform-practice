variable "region" {}
variable "project" {}
variable "env" {}
variable "vpc_cidr" {}
variable "public_subnets" { type = list(string) }
variable "private_subnets" { type = list(string) }



# RDS VARIABLES

variable "rds_allocated_storage" {}
variable "rds_engine" {}
variable "rds_engine_version" {}
variable "rds_instance_class" {}
variable "rds_db_name" {}
variable "rds_username" {}
variable "rds_password" {}
variable "rds_parameter_group_name" {}
variable "rds_security_group_id" {}
variable "rds_subnet_group_name" {}
variable "rds_multi_az" {}






