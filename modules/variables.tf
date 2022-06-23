variable "region" {
  default = "us-east-2"
}

variable "region1" {
  default = "us-east-1"
}

variable "ami" {
  default = "ami-08ee2516c7709ea48"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "name" {
  default = "first-deploy-tf"
}

variable "environment" {
  default = "dev"
}

variable "security_group" {
  default = "ssh_connection"
}
