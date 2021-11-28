variable "influxdb_version" {
  type        = string
  default     = "2.1.1"
  description = "Version tag of InfluxDB"
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

variable "query_memory_bytes" {
  type        = number
  default     = 10485760
  description = "Maximum bytes of memory allowed for a single query"
}

variable "query_queue_size" {
  type        = number
  default     = 10
  description = "Maximum number of queries that can be queued"
}

variable "expose_port" {
  default     = 8086
  type        = number
  description = "Port to expose InfluxDB on"
}
