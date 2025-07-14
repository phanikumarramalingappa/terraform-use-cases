resource "aws_lambda_function" "lambda" {
    s3_bucket   = var.s3_bucket
    s3_key      = var.s3_key
    name        = var.name
    role        = var.role
    handler     = "lambda.lambda_handler"
    runtime     = "python3.9"
    memory_size = 128
    timeout     = 30
    publish     = true
}