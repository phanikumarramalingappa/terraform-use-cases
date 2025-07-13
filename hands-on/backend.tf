terraform {
  backend "s3" {
    bucket       = "terraform-usecases-batch6"
    key          = "handson-1/terraform.tfstate"
    region       = "eu-west-1"
    use_lockfile = true
  }
}