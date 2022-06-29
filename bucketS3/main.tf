provider "aws" {
    region = var.region
    profile = "automation-test-v1"
    //credenciales si no estan como variable de entorno
}

//aws_s3_bucket_acl use this for no declare acl var
resource "aws_s3_bucket" "test-terraform-bucket" {
    bucket = var.bucket_name
    acl = var.acl
    tags = var.tags
}
