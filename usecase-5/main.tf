provider "aws" {
  region = "us-east-1"
}


module "sns_topic" {
  source         = "./modules/sns"
  sns_topic_name = var.sns_topic_name
  email          = var.email
}
