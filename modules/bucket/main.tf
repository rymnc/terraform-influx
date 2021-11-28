resource "influxdb-v2_bucket" "bucket" {
  name        = var.bucket_name
  description = var.bucket_description
  org_id      = var.org_id
  retention_rules {
    every_seconds = var.retention_days * 86400
  }
}
