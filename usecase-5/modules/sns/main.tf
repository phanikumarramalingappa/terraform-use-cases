data "aws_caller_identity" "current" {}

resource "aws_sns_topic" "sns_notification" {
  name = var.sns_topic_name

  policy = jsonencode({
    Version = "2012-10-17",
    Id      = "__default_policy_ID",
    Statement = [
      {
        Sid       = "__default_statement_ID",
        Effect    = "Allow",
        Principal = {
          AWS = "*"
        },
        Action = [
          "SNS:GetTopicAttributes",
          "SNS:SetTopicAttributes",
          "SNS:AddPermission",
          "SNS:RemovePermission",
          "SNS:DeleteTopic",
          "SNS:Subscribe",
          "SNS:ListSubscriptionsByTopic",
          "SNS:Publish"
        ],
        Resource = aws_sns_topic.sns_notification.arn,
        Condition = {
          StringEquals = {
            "AWS:SourceOwner" = data.aws_caller_identity.current.account_id
          }
        }
      },
      {
        Sid       = "AllowS3ToPublish",
        Effect    = "Allow",
        Principal = {
Service = "s3.amazonaws.com"
        },
        Action   = "SNS:Publish",
        Resource = aws_sns_topic.sns_notification.arn,
        Condition = {
          ArnLike = {
            "aws:SourceArn" = "arn:aws:s3:::${var.bucket_name}"
          }
        }
      }
    ]
  })
}

resource "aws_sns_topic_subscription" "subscribe" {
  topic_arn = aws_sns_topic.sns_notification.arn
  protocol  = "email"
  endpoint  = var.email
}