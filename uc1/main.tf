
locals {
  instance_names = ["Instance A", "Instance B", "Instance C"]
}


module "ec2" {
    source = "../modules/ec2"

    for_each = toset(local.instance_names)

    instance_name = each.key

    ami_id     = var.ami_id
    vpc_id = "vpc-0253000a11759887b"
}
