plugin "aws" {
  enabled = true
  version = "0.29.0" # Pin to latest compatible version (update as needed)
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  region  = "us-east-1"
}

# Enabling all default rules for AWS
rule "aws_instance_invalid_type" { enabled = true }
rule "aws_db_instance_invalid_type" { enabled = true }
rule "terraform_unused_declarations" { enabled = true }
