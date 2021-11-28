provider "docker" {
  host = "unix:///var/run/docker.sock"
}
provider "influxdb-v2-onboarding" {
  url   = local.influx_url
  alias = "onboarding"
}

provider "influxdb-v2" {
  token = module.setup_influxdb.influxdb_details.token
  url   = data.external.wait.url
}
