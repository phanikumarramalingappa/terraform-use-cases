variable "s3_bucket" {
    type = string
    description = "lambda function s3 bucket name"
}

variable "s3_key" {
    type = string
    description = "lambda function s3 bucket path name"
}

variable "name" {
    type = string
    description = "lambda function name"
}

variable "role" {
    type = string
    description = "lambda function IAM role ARN"
}