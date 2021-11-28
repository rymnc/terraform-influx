resource "influxdb-v2-onboarding_setup" "setup" {
  username = var.init_username
  password = var.init_password
  bucket   = var.init_bucket
  org      = var.init_org
}
