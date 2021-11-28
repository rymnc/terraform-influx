<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_influxdb-v2-onboarding"></a> [influxdb-v2-onboarding](#requirement\_influxdb-v2-onboarding) | 0.4.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_influxdb-v2-onboarding"></a> [influxdb-v2-onboarding](#provider\_influxdb-v2-onboarding) | 0.4.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [influxdb-v2-onboarding_setup.setup](https://registry.terraform.io/providers/lancey-energy-storage/influxdb-v2-onboarding/0.4.1/docs/resources/setup) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_influxdb_url"></a> [influxdb\_url](#input\_influxdb\_url) | The URL of the InfluxDB server | `string` | `"http://localhost:8086"` | no |
| <a name="input_init_bucket"></a> [init\_bucket](#input\_init\_bucket) | Initial bucket for InfluxDB | `string` | `"default"` | no |
| <a name="input_init_org"></a> [init\_org](#input\_init\_org) | Initial organization for InfluxDB | `string` | `"default"` | no |
| <a name="input_init_password"></a> [init\_password](#input\_init\_password) | Initial password for InfluxDB | `string` | `"password"` | no |
| <a name="input_init_username"></a> [init\_username](#input\_init\_username) | Initial username for InfluxDB | `string` | `"admin"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_influxdb_details"></a> [influxdb\_details](#output\_influxdb\_details) | InfluxDB onboarding setup |
<!-- END_TF_DOCS -->