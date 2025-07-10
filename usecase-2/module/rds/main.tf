resource "aws_db_instance" "rds_instance" {
identifier=var.db_identifier
engine=var.db_engine
instance_class= var.db_instance_class
allocated_storage=var.db_allocated_storage
name=var.name
username=var.db_username
password=var.db_password
db_subnet_group_name=aws_db_subnet_group.rds_subnet_group.name
vpc_security_group_ids=var.security_group_ids
skip_final_snapshot=true
publicly_accessible=false
multi_az=var.multi_az
tags=var.tags
}

resource "aws_db_subnet_group" "rds_subnet_group"{
    name = var.db_subnet_group_name
    description = "RDS private subnet group"
    subnet_ids = var.private_subnet_ids
}