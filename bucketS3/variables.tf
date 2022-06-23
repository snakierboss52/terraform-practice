variable "region" {
  default = "us-east-2"
}

variable "bucket_name"{
  default = "backend-bucket-terraform"
}

variable "acl"{
  default = "private"
}

variable "environment" {
  default = "dev"
}

variable "tags"{
  default = {
    Enviroment = "dev"
  }
}

