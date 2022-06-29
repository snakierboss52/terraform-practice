variable "region" {
    default = "us-east-2"
}

variable "environment" {
    default = "dev"
}

variable "table_name" {
    default = "practice_test_terraform"
}

variable "description" {
    default = "practice_test_terraform"
}

variable "user_id_key" {
    default = "user_id"
}

variable "user_id_key_type" {
    default = "S"
}

variable "city_id_key" {
    default = "city_id"
}

variable "city_id_key_type" {
    default = "S"
}

variable "created_at_key" {
    default = "created_at"
}

variable "created_at_key_type" {
    default = "S"
}

variable "status_key" {
    default = "status"
}

variable "status_key_type" {
    default = "S"
}

variable "city_id-user_id-index" {
    default = "city_id-user_id-index"
}

variable "created_at-user_id-index" {
    default = "created_at-user_id-index"
}

variable "city_id-created_at-index" {
    default = "_id-created_at-index"
}

variable "city_id-status-index" {
    default = "city_id-status-index"
}

variable "created_at-status-index" {
    default = "created_at-status-index"
}

variable "projection_type" {
    default = "ALL"
}

variable "billing_mode" {
    default = "PAY_PER_REQUEST"
}


variable "ttl" {
    default = null
}

locals {
  tags = {
    Terraform   = true
    Environment = var.environment
  }
}