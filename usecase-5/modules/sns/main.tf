resource "aws_sns_topic" "sns_notification" {
  name = var.sns_topic_name
}

resource "aws_sns_topic_subscription" "subscribe" {
  topic_arn = aws_sns_topic.sns_notification.arn
  protocol  = "email"
  endpoint  = var.email
}