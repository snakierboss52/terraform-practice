provider "aws" {
    region = var.region
    //credenciales si no estan como variable de entorno
}
resource "aws_instance" "test-instance" {
  ami = var.ami
  instance_type = var.instance_type
  tags= {
    Name = var.name
    Environment = var.environment
  }
}

resource "aws_security_group" "ssh_connection" {
  name        = var.security_group
  description = "Allow SSH connection by security group"

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
  }
}