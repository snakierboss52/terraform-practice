terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"

  cidr = var.vpc_cidr_block

  azs             = ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets = slice(var.private_subnet_cidr_blocks, 0, 3)
  public_subnets  = slice(var.public_subnet_cidr_blocks, 0, 3)

  enable_nat_gateway = false
  enable_vpn_gateway = false
}