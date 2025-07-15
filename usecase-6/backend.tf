terraform {
  required_version = ">=1.0.0"
  backend "s3" {
    bucket       = "terraform-usecases-batch6"
    key          = "usecase6/terraform.tfstate"
    region       = "eu-west-1"
    use_lockfile = true
  }
}