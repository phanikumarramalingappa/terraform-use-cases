variable "lambda_arn" {
  description = "Name to be used on lambda arn"
  type        = string
}

variable "lambda_function_name" {
    description = "Name to be used on lambda name"
    type = string
}
variable "stage_name" {
    description = "Name to be used on lambda name"
    type = string
}
variable "region" {
  description = "AWS region where the API Gateway is deployed"
  type        = string
}

