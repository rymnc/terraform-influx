variable "influxdb_url" {
  default     = "http://localhost:8086"
  description = "The URL of the InfluxDB server"
  type        = string
}

variable "init_username" {
  type        = string
  default     = "admin"
  description = "Initial username for InfluxDB"
}

variable "init_password" {
  type        = string
  default     = "password"
  description = "Initial password for InfluxDB"
}

variable "init_bucket" {
  type        = string
  default     = "default"
  description = "Initial bucket for InfluxDB"
}

variable "init_org" {
  type        = string
  default     = "default"
  description = "Initial organization for InfluxDB"
}
