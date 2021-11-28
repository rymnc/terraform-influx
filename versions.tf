terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
    influxdb-v2-onboarding = {
      source  = "lancey-energy-storage/influxdb-v2-onboarding"
      version = "0.4.1"
    }
    influxdb-v2 = {
      source  = "lancey-energy-storage/influxdb-v2"
      version = "0.4.1"
    }
  }
}
