terraform {
  required_version = ">=1.0.0"
  backend "s3" {
    bucket       = "terraform-usecases-nsh-batch6"
    key          = "usecase6/terraform.tfstate"
    region       = "ap-southeast-2"
    use_lockfile = true
  }
}
