resource "aws_dynamodb_table" "dynamodb_table" {
  name           = var.table_name
  hash_key       = var.id_key
  range_key      = var.created_at_key

    attribute {
    name = var.id_key
    type = var.id_key_type
  }
  attribute {
    name = var.status_key
    type = var.status_key_type
  }
  attribute {
    name = var.created_at_key
    type = var.created_at_key_type
  }
  tags = {
    Name        = "${var.table_name}-DT"
    Environment = var.environment
    Project     = var.project
    Terraform   = "true"
  }
  dynamic "ttl" {
    for_each = local.ttl
    content {
      enabled        = local.ttl[0].ttl_enable
      attribute_name = local.ttl[0].ttl_attribute
    }
  }
} 