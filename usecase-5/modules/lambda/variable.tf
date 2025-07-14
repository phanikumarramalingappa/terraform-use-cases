variable "lambda_function" {
    type = object({
        s3_bucket = string
        s3_key = string
        name = string
        role = string
    })
}