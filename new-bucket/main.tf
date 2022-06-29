terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
}

provider "aws" {
    region = var.region
}

resource "aws_s3_bucket" "terraform-practice-jorge-lozano-98" {
    bucket = var.bucket_name
    acl    = var.acl
    tags = var.tags
}
