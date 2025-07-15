resource "aws_cloudwatch_event_rule" "schedule" {
    name = var.name
    schedule_expression = var.schedule_expression
    description = var.description
}

resource "aws_cloudwatch_event_target" "lambda" {
    rule = aws_cloudwatch_event_rule.schedule.name
    target_id = var.start_lambda_name
    arn = var.start_lambda_arn
}