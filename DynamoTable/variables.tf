variable "region" {
    default = "us-east-2"
}

variable "environment" {
    default = "dev"
}

variable "table_name" {
    default = "test_practice_terraform"
}

variable "description" {
    default = "test_practice_terraform"
}

variable "id_key" {
    default = "id"
}

variable "id_key_type" {
    default = "S"
}

variable "status_key" {
    default = "status"
}

variable "status_key_type" {
    default = "S"
}

variable "project" {
    default = "practice-terraform"
}

variable "ttl" {
    default = null
}

locals {
  tags = {
    Terraform   = true
    Environment = var.environment
    Project     = var.project
  }
}