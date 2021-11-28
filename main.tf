locals {
  influx_url = "http://localhost:${var.expose_port}"
}

/* Docker Image for InfluxDB v2 */
resource "docker_image" "influxdb_image" {
  name = "influxdb:${var.influxdb_version}"
}

/* Docker Volume for InfluxDB v2 */
resource "docker_volume" "influxdb_volume" {
  name = "influxdb-data"
}

/* Docker Container for InfluxDB v2 */
resource "docker_container" "influxdb_container" {
  name         = "influxdb"
  image        = docker_image.influxdb_image.latest
  network_mode = "host"
  volumes {
    volume_name    = docker_volume.influxdb_volume.name
    container_path = "/data"
  }
  env = [
    "INFLUXD_BOLT_PATH=/data/bolt",
    "INFLUXD_ENGINE_PATH=/data/engine",
    "INFLUXD_HTTP_IDLE_TIMEOUT=0",
    "INFLUXD_QUERY_MEMORY_BYTES=${var.query_memory_bytes}",
    "INFLUXD_QUERY_QUEUE_SIZE=${var.query_queue_size}",
    "INFLUXD_SESSION_LENGTH=12000",
  ]
  ports {
    external = var.expose_port
    internal = 8086
  }

}

data "external" "wait" {
  program = ["./wait_for_influx.sh", local.influx_url]

  depends_on = [
    docker_container.influxdb_container
  ]
}


/* Setup process for InfluxDB V2 */
module "setup_influxdb" {
  source = "./modules/setup"

  init_username = var.init_username
  init_password = var.init_password
  init_bucket   = var.init_bucket
  init_org      = var.init_org

  depends_on = [
    data.external.wait
  ]
  providers = {
    influxdb-v2-onboarding = influxdb-v2-onboarding.onboarding
  }
}
