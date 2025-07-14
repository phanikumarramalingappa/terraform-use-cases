variable "email" {
  type        = string
  description = "Enamil ID which is need to be subscribed"
}

variable "sns_topic_name" {
  type        = string
  description = "SNS Topic name"
}

variable "bucket_input_name" {
    type = string
    description = "S3 input Bucket name"
}

variable "bucket_output_name" {
    type = string
    description = "S3 output Bucket name"
}