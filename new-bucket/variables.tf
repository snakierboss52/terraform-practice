variable "region" {
  default = "us-east-2"
}

variable "bucket_name"{
  default = "terraform-practice-jorge-lozano-98"
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

