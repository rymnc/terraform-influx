module "bucket_test" {
  source = "./modules/bucket"

  bucket_name        = "test"
  bucket_description = " test desc"
  org_id             = module.setup_influxdb.influxdb_details.org_id
  retention_days     = 15
}
