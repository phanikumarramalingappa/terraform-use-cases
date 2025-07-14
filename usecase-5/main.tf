provider "aws" {
  region = "us-east-1"
}


module "sns_topic" {
  source         = "./modules/sns"
  sns_topic_name = var.sns_topic_name
  email          = var.email
}


module "s3_bucket" {
  source             = "./modules/s3"
  input_bucket_name  = var.bucket_input_name
  output_bucket_name = var.bucket_output_name
}

module "lambda" {
  lambda_function = {
    source      = "./modules/lambda"
    s3_bucket   = var.lambda_s3_bucket
    s3_key      = var.lambda_s3_key
    name        = var.lambda_name
    role        = var.lambda_role
    handler     = "lambda.lambda_handler"
    runtime     = "python3.9"
    memory_size = 128
    timeout     = 30
    publish     = true
  }
}