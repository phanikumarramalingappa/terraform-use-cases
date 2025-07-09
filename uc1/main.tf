module "ec2" {
  source = "../modules/ec2"
  count = length(var.public_subnets)
  subnet_id = var.public_subnets[count.index]
  ami_id = var.ami_id
  vpc_id = module.vpc.vpc_id
  sg_id = module.security_group.sg_id
}

module "vpc" {
  source          = "../modules/vpc"
  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
}


module "security_group" {
  source = "../modules/security-group"
  vpc_id = module.vpc.vpc_id
}