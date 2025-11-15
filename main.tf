provider "aws" { region = var.region }

module "network" {
  source         = "./modules/network"
  region         = var.region
  project        = var.project
  env            = var.env
  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets
}


module "rds" {
  source                    = "./modules/Rds"
  rds_allocated_storage     = var.rds_allocated_storage
  rds_engine                = var.rds_engine
  rds_engine_version        = var.rds_engine_version
  rds_instance_class        = var.rds_instance_class
  rds_db_name               = var.rds_db_name
  rds_username              = var.rds_username
  rds_password              = var.rds_password
  rds_parameter_group_name  = var.rds_parameter_group_name
  rds_security_group_id     = module.network.rds_security_group_id
  rds_subnet_group_name     = module.network.rds_subnet_group_name
  rds_multi_az              = var.rds_multi_az
  
}


