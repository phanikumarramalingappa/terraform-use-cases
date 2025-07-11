terraform {
  backend "s3" {
    bucket       = "terraform-usecases-batch6"
    key          = "usecase3/terraform.tfstate"
    region       = "eu-west-1"
    use_lockfile = true
  }
}