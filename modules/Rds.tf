resource "aws_rds_instance" "my-rds" {
    allocated_storage    = var.rds_allocated_storage
    engine               = var.rds_engine
    engine_version       = var.rds_engine_version
    instance_class       = var.rds_instance_class
    name                 = var.rds_db_name
    username             = var.rds_username
    password             = var.rds_password
    parameter_group_name = var.rds_parameter_group_name
    skip_final_snapshot  = true
    vpc_security_group_ids = [var.rds_security_group_id]
    db_subnet_group_name   = var.rds_subnet_group_name
    multi_az              = var.rds_multi_az
    tags = {
        Name = "${var.project}-${var.env}-rds"  
}
    resource "aws_db_subnet_group" "this" {
  name       = "${var.project}-${var.env}-db-subnet-group"
  subnet_ids = var.private_subnets
}

}