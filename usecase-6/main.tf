module "lambda" {
  source = "./modules/lambda"
 
  lambda_function = {
    start_name = "start-lambda"
    stop_name = "stop-lambda"
    role = var.lambda_role
  }
  instance_id     = var.instance_id
  region          = var.region
}

module "start_ec2_schedule" {
  source              = "./modules/event"
  name                = "start-ec2-schedule"
  description         = "Trigger Lambda to start EC2"
  schedule_expression = "cron(0 9 * * ? *)"
  lambda_arn          = module.start_lambda.start_lambda_function_arn
  lambda_name         = module.start_lambda.start_lambda_function_name
}

module "stop_ec2_schedule" {
  source              = "./modules/event"
  name                = "stop-ec2-schedule"
  description         = "Trigger Lambda to stop EC2"
  schedule_expression = "cron(0 18 * * ? *)"
  lambda_arn          = module.lambda.stop_lambda_function_arn
  lambda_name         = module.lambda.stop_lambda_function_name
}

