module "ec2" {
  source = "../modules/ec2"
  ami_id = var.ami_id
  vpc_id = "vpc-0253000a11759887b"
}

module "vpc" {
  source          = "../modules/vpc"
  vpc_name            = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = [var.public_subnets]
  private_subnets = [var.private_subnets]
  azs             = [var.azs]
}
