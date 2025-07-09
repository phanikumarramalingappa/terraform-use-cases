provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "ec2"{
    ami = var.ami_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.sg_id]
    tags = {
      Name = "Instance A"
    }
}

resource "aws_instance" "ec2-1"{
    ami = var.ami_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.sg_id]
    tags = {
      Name = "Instance B"
    }
}

resource "aws_instance" "ec2-2"{
    ami = var.ami_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.sg_id]
    tags = {
       Name = "Instance C"
     }
}