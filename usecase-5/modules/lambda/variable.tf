variable "lambda_function" {
  type = object({
    s3_bucket = string
    s3_key    = string
    name      = string
    role      = string
  })
}

variable "bucket_output_name"{
    type = string
    description = "S3 bucket trigger bucket"
}