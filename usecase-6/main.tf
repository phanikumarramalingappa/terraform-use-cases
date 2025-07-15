module "lambda" {
  source = "./modules/lambda"
 
  lambda_function = {
    start_name = "start-lambda"
    stop_name = "stop-lambda"
  }
  instance_id     = var.instance_id
  region          = var.region
}