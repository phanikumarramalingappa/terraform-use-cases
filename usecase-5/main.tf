provider "aws" {
  region = "us-east-1"
}


module "sns_topic" {
  source         = "./modules/sns"
  sns_topic_name = var.sns_topic_name
  email          = var.email
}


module "s3_bucket" {
  source         = "./modules/s3"
  bucket_iname = var.bucket_input_name
  bucket_oname = var.bucket_output_name
}

