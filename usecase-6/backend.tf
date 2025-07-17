terraform {
  required_version = ">=1.0.0"
  backend "s3" {
    bucket       = "terraform-usecases-nsh-batch6"
    key          = "usecase6/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
