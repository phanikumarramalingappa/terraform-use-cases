
locals {
  instance_names = ["Instance A", "Instance B", "Instance C"]
}


module "ec2" {
    source = "../modules/ec2"
    ami_id     = var.ami_id
    vpc_id = "vpc-0253000a11759887b"
}
