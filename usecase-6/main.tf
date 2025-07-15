module "lambda" {
  source      = "./modules/lambda"
  lambda_function = {
    name        = var.lambda_name
    role        = var.lambda_role
    handler     = "start_lambda.lambda_handler"
    lambda_path_file = "${path.module}/start_lambda.py"
    runtime     = "python3.9"
    memory_size = 128
    timeout     = 15    
    publish     = true
    environment_variables = {
      instance_id = var.instance_id
      region      = var.region
    }
  }
  instance_id = var.instance_id
  region      = var.region
}