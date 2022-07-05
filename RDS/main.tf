provider "aws" {
  region = var.region
}

resource "aws_db_instance" "rds-test" {
    db_name = "dbTest"
    identifier = "db-test-aws"
    instance_class = "db.t2.micro"
    allocated_storage    = 5
    engine               = "mysql"
    engine_version       = "5.7"
    parameter_group_name = "default.mysql5.7"
    username             = "foo"
    password             = "foobarbaz"
    skip_final_snapshot  = true
    port = 3306
}