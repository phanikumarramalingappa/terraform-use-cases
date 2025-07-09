provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "ec2"{
    ami = var.ami_id
    instance_type = "t2.micro"
    count = length(var.public_subnets)
    subnet_id = var.public_subnets[count.index]
    vpc_security_group_ids = [var.sg_id]
    tags = {
      Name = "Instance-${count.index}"
    }
}