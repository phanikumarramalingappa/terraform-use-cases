terraform {
    required_providers {
        aws = {
            source = "hasicorp/aws"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
  region = var.region
}
