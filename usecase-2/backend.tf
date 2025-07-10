terraform {
    backend s3 {
        bucket = "terraform-usecases-batch6"
        key = "usecase2/terraform.tfstate"
        region = "eu-west-1"
    }
}