provider "aws" {
    region = var.region
    //credenciales si no estan como variable de entorno
}

//aws_s3_bucket_ac use this for no declare acl var
resource "aws_s3_bucket" "test-terraform-bucket" {
    bucket = var.bucket_name
    acl = var.acl
    tags = var.tags
}
