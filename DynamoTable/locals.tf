locals {
  ttl = (var.ttl != null ? [
    {
      ttl_enable = true
      ttl_attribute : var.ttl
    }
  ] : [])
}