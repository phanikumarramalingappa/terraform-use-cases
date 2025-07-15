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