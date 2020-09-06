provider "aws" {
  region  = "us-east-1"
  version = "~> 2.59"
}

terraform {
  backend "s3" {
    # Replace with your state bucket name and region
    bucket = "personal-static-site-state"
    region = "us-east-1"
    key    = "global/s3/terraform.tfstate"
  }
}