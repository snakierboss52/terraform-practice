provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2-cluster-test" {
  ami = "ami-02d1e544b84bf7502"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.mySecurityGroup.name]
}

resource "aws_eip" "EC2-eip" {
  instance = aws_instance.ec2-cluster-test.id
}

resource "aws_security_group" "mySecurityGroup" {
    name = "Allow HTTPS"

    ingress {
        description = "Allow HTTPS from any where"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

     egress {
        description = "Allow HTTPS from any where"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

output "outputEip" {
  value = aws_eip.EC2-eip.public_ip
}