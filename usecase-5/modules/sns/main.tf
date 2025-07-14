resource "aws_sns_topic" "sns_notification" {
  name = "image-resizing"
}

resource "aws_sns_topic_subscription" "subscribe" {
  topic_arn = aws_sns_topic.sns_notification.arn
  protocol  = "email"
  endpoint  = var.email
}