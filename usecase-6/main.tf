locals {
  lambda_functions = {
    lambda1 = {
      name                = "start-lambda"
      role                = var.lambda_role
      handler             = "start_lambda.lambda_handler"
      lambda_path_file = "${path.module}/start_lambda.py"
      runtime             = "python3.9"
      memory_size         = 128
      timeout             = 15
      publish             = true
      environment_variables = {
        instance_id = var.instance_id
        region      = var.region
      }
    }
    lambda2 = {
      name                = "stop-lambda"
      role                = var.lambda_role
      handler             = "stop_lambda.lambda_handler"
      lambda_path_file = "${path.module}/stop_lambda.py"
      runtime             = "python3.9"
      memory_size         = 128
      timeout             = 15
      publish             = true
      environment_variables = {
        instance_id = var.instance_id
        region      = var.region
      }
    }
  }
}
 
module "lambda" {
  for_each = local.lambda_functions
 
  source = "./modules/lambda"
 
  lambda_function = each.value
  instance_id     = var.instance_id
  region          = var.region
}