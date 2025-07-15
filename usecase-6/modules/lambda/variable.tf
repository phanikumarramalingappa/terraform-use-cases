variable "lambda_function" {
  type = object({
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