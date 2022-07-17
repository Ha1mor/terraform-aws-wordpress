provider "aws" {
  region = var.aws_reg
  # version = "2.12.0"
  profile = "default"
}

provider "template" {
    version = "~> 2.1.2"
}

terraform {
  backend "s3" {
    access_key                  = "AKIAWW5LNZWYAJKI4MWK"
    secret_key                  = "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"
    profile                     = "default"
    bucket                      = "backend-bucket-sigma"
    key                         = "backend-bucket-sigma/terraform.tfstate"
    region                      = "eu-west-1"
    skip_metadata_api_check     = true
    encrypt                     = true
    role_arn                    = "arn:aws:iam::461531631024:role/apiuser"
  }
}
