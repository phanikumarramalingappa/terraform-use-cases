terraform {
    required_version = ">= 1.12.0"

    required_providers {
        aws = {
            source = "hasicorp/aws"
            version = "~>6.0"
        }
    }
}

provider "aws" {
  region = var.region
}
