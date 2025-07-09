module "ec2" {
    source = "../modules/ec2"
    vpc_security_group_ids = [module.sg.sg_id]
}

module "sg" {
    source = "../modules/security_group"
}