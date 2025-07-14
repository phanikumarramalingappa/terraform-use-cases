provider "aws" {
  region = "us-east-1"
}


module "sns_topic" {
  source = "./modules/sns"
  email = var.email
}
