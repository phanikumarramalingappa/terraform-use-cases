resource "aws_lambda_function" "lambda" {
  function_name        = var.lambda_function.name
  role        = var.lambda_function.role
  handler     = "lambda_function.lambda_handler"
  runtime     = "python3.9"
  memory_size = 128
  timeout     = 30
  publish     = true
  environment_variables = {
    variable {
      instance_id = var.instance_id
      region      = var.region
    }
  }
}