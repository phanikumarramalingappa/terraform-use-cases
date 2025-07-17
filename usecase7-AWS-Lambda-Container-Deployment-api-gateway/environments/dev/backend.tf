terraform {
  backend "s3" {
    bucket         = "terraform-state-dev"
    key            = "lambda-container/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
    workspace_key_prefix = "env"
  }
}
