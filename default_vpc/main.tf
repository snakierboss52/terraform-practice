provider "aws" {
  region = var.aws_region
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}