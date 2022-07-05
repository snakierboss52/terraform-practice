provider "aws" {
  region = var.region
}

module "ec2-module" {
  source = "./EC2"
}