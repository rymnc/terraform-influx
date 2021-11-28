<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | 2.15.0 |
| <a name="requirement_influxdb-v2"></a> [influxdb-v2](#requirement\_influxdb-v2) | 0.4.1 |
| <a name="requirement_influxdb-v2-onboarding"></a> [influxdb-v2-onboarding](#requirement\_influxdb-v2-onboarding) | 0.4.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | 2.15.0 |
| <a name="provider_external"></a> [external](#provider\_external) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bucket_test"></a> [bucket\_test](#module\_bucket\_test) | ./modules/bucket | n/a |
| <a name="module_setup_influxdb"></a> [setup\_influxdb](#module\_setup\_influxdb) | ./modules/setup | n/a |

## Resources

| Name | Type |
|------|------|
| [docker_container.influxdb_container](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_image.influxdb_image](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/image) | resource |
| [docker_volume.influxdb_volume](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/volume) | resource |
| [external_external.wait](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_expose_port"></a> [expose\_port](#input\_expose\_port) | Port to expose InfluxDB on | `number` | `8086` | no |
| <a name="input_influxdb_version"></a> [influxdb\_version](#input\_influxdb\_version) | Version tag of InfluxDB | `string` | `"2.1.1"` | no |
| <a name="input_init_bucket"></a> [init\_bucket](#input\_init\_bucket) | Initial bucket for InfluxDB | `string` | `"default"` | no |
| <a name="input_init_org"></a> [init\_org](#input\_init\_org) | Initial organization for InfluxDB | `string` | `"default"` | no |
| <a name="input_init_password"></a> [init\_password](#input\_init\_password) | Initial password for InfluxDB | `string` | `"password"` | no |
| <a name="input_init_username"></a> [init\_username](#input\_init\_username) | Initial username for InfluxDB | `string` | `"admin"` | no |
| <a name="input_query_memory_bytes"></a> [query\_memory\_bytes](#input\_query\_memory\_bytes) | Maximum bytes of memory allowed for a single query | `number` | `10485760` | no |
| <a name="input_query_queue_size"></a> [query\_queue\_size](#input\_query\_queue\_size) | Maximum number of queries that can be queued | `number` | `10` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_influxdb_url"></a> [influxdb\_url](#output\_influxdb\_url) | n/a |
<!-- END_TF_DOCS -->