provider "aws" {
  region = var.region
}
resource "aws_ecr_repository" "foo" {
  name                 = "springfundamentals"
  image_scanning_configuration {
    scan_on_push = falses
  }
}