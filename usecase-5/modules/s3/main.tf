resource "aws_s3_bucket" "s3_input_bucket" {
  bucket = var.input_bucket_name
}

resource "aws_s3_bucket" "s3_output_bucket" {
  bucket = var.output_bucket_name
}


resource "aws_s3_bucket_notification" "s3_event_notification" {
  bucket = aws_s3_bucket.s3_output_bucket.id
 
  topic {
    topic_arn     = var.topic_arn
    events = var.events
    filter_prefix = var.filter_prefix != "" ? var.filter_prefix : null
    filter_suffix = var.filter_suffix != "" ? var.filter_suffix : null
  }
 
  depends_on = [var.depends_on]
}