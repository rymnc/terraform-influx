<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_influxdb-v2"></a> [influxdb-v2](#requirement\_influxdb-v2) | 0.4.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_influxdb-v2"></a> [influxdb-v2](#provider\_influxdb-v2) | 0.4.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [influxdb-v2_bucket.bucket](https://registry.terraform.io/providers/lancey-energy-storage/influxdb-v2/0.4.1/docs/resources/bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_description"></a> [bucket\_description](#input\_bucket\_description) | The description of the bucket to create | `string` | n/a | yes |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the bucket to create | `string` | n/a | yes |
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | The ID of the organization to create the bucket in | `string` | n/a | yes |
| <a name="input_retention_days"></a> [retention\_days](#input\_retention\_days) | The number of days to retain data in the bucket | `number` | `30` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_details"></a> [bucket\_details](#output\_bucket\_details) | n/a |
<!-- END_TF_DOCS -->