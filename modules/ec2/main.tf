provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "ec2"{
    ami = var.ami_id
    instance_type = "t3.micro"
    count = length(var.public_subnets)
    subnet_id = var.public_subnets[count.index]
    vpc_security_group_ids = [var.sg_id]
    user_data = file("${path.module}/userdata-${count.index}.sh")
    tags = {
      Name = "Instance-${count.index}"
    }
}