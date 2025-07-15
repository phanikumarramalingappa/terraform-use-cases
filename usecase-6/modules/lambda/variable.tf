variable "lambda_function" {
  type = object({
    s3_bucket = string
    s3_key    = string
    name      = string
    role      = string
  })
}

variable "instance_id"{
    type = string
    description = "Instance ID"
}

variable "region" {
    type = string
    description = "AWS Region"
}