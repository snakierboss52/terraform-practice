provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2-cluster-test" {
  ami = "ami-02d1e544b84bf7502"
  instance_type = "t2.micro"
}

