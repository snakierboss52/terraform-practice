provider "aws" {
  region = var.region
  default_tags {
    tags = local.tags
  }
}

resource "aws_dynamodb_table" "dynamodb_table" {
  name           = var.table_name
  hash_key       = var.user_id_key
  range_key      = var.created_at_key
  billing_mode   = var.billing_mode
  attribute {
    name = var.user_id_key
    type = var.user_id_key_type
  }
  attribute {
    name = var.city_id_key
    type = var.city_id_key_type
  }
  attribute {
    name = var.status_key
    type = var.status_key_type
  }
  attribute {
    name = var.created_at_key
    type = var.created_at_key_type
  }
  dynamic "ttl" {
    for_each = local.ttl
    content {
      enabled        = local.ttl[0].ttl_enable
      attribute_name = local.ttl[0].ttl_attribute
    }
  }
  global_secondary_index {
    name               = var.city_id-user_id-index
    hash_key           = var.city_id_key
    range_key          = var.user_id_key
    projection_type    = var.projection_type
  }
  global_secondary_index {
    name               = var.created_at-user_id-index
    hash_key           = var.created_at_key
    range_key          = var.user_id_key
    projection_type    = var.projection_type
  }
  global_secondary_index {
    name               = var.city_id-created_at-index
    hash_key           = var.city_id_key
    range_key          = var.created_at_key
    projection_type    = var.projection_type
  }
  global_secondary_index {
    name               = var.city_id-status-index
    hash_key           = var.city_id_key
    range_key          = var.status_key
    projection_type    = var.projection_type
  }
  global_secondary_index {
    name               = var.created_at-status-index
    hash_key           = var.created_at_key
    range_key          = var.status_key
    projection_type    = var.projection_type
  }
  tags = {
    Name        = "${var.table_name}-DT"
    Environment = var.environment
    Terraform   = "true"
  }
}