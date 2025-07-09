module "ec2" {
    source = "../modules/ec2"
    security_group  = [module.sg.sg_id]
}

module "sg" {
    source = "../modules/security_group"
}