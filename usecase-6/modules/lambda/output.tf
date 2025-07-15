output "start_lambda_function_arn" {
    value = aws_lambda_function.start_lambda.lambda_arn
}

output "start_lambda_function_name" {
    value = aws_lambda_function.start_lambda.lambda_name
}

output "stop_lambda_function_arn" {
    value = aws_lambda_function.stop_lambda.lambda_arn
}

output "stop_lambda_function_name" {
    value = aws_lambda_function.stop_lambda.lambda_name
}