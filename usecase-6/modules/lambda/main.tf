data "archive_file" "zip" {
  type = "zip"
  source_file = "${path.module}/start_lambda.py"
  output_path = "${path.module}/function-${var.lambda_function_name}.zip"
}

resource "aws_lambda_function" "lambda" {
  function_name        = var.lambda_function.name
  role        = var.lambda_function.role
  handler     = "start_lambda.lambda_handler"
  runtime     = "python3.9"
  memory_size = 128
  timeout     = 30
  publish     = true
  filename = data.archive_file.zip.output_path
  environment {
    variables = {
      instance_id = var.instance_id
      region      = var.region
    }
  }
}