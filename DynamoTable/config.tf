terraform {
  backend "s3" {
    bucket = "s3-website-test.hashicorp.com"
    acl    = "public-read"
    encrypt = true
    region  = "us-east-2"
  }
   versioning {
    enabled = true
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = ">= 0.15"
}

provider "aws" {
  region = var.region
  default_tags {
    tags = local.tags
  }
}