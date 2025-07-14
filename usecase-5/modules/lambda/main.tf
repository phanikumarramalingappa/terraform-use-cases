resource "aws_lambda_function" "lambda" {
  s3_bucket   = var.lambda_function.s3_bucket
  s3_key      = var.lambda_function.s3_key
  function_name        = var.lambda_function.name
  role        = var.lambda_function.role
  handler     = "lambda.lambda_handler"
  runtime     = "python3.9"
  memory_size = 128
  timeout     = 30
  publish     = true
}