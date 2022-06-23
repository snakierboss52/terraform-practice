terraform {
  backend "s3" {
    bucket = "backend-bucket-terraform"
    key    = "dev"
    region = "us-east-2"
  }
}