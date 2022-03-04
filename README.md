# AzureRM PostgreSQL flexible server Terraform module

Terraform module which creates a PostgreSQL flexible server resource on Azure.

## User Stories for this module

- AASRE I have an AzureRM flexible PostgreSQL server

## Usage

```hcl
module "flexible-postgresql" {
  source = "git@github.com:padok-team/terraform-azurerm-postgresql-flexible-server.git?ref=v1.0.0"

  name                   = "example"
  resource_group_name    = "my_rg"
  location               = "West Europe"
  administrator_login    = "padok"
}
```

## Examples

- [Basic configuration](examples/basic/main.tf)
- [With SKU, storage size and password](examples/with-sku-storage-size-and-password/main.tf)

<!-- BEGIN_TF_DOCS -->
## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrator_login"></a> [administrator\_login](#input\_administrator\_login) | The Administrator Login for the PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | n/a | yes |
| <a name="input_administrator_password"></a> [administrator\_password](#input\_administrator\_password) | The Password associated with the administrator\_login for the PostgreSQL Flexible Server. | `string` | `null` | no |
| <a name="input_backup_retention_days"></a> [backup\_retention\_days](#input\_backup\_retention\_days) | The backup retention days for the PostgreSQL Flexible Server. Possible values are between 7 and 35 days. | `number` | `30` | no |
| <a name="input_delegated_subnet_id"></a> [delegated\_subnet\_id](#input\_delegated\_subnet\_id) | The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | `null` | no |
| <a name="input_geo_redundant_backup_enabled"></a> [geo\_redundant\_backup\_enabled](#input\_geo\_redundant\_backup\_enabled) | Is Geo-Redundant backup enabled on the PostgreSQL Flexible Server. Defaults to true. Changing this forces a new PostgreSQL Flexible Server to be created. | `bool` | `true` | no |
| <a name="input_pg_version"></a> [pg\_version](#input\_pg\_version) | The version of PostgreSQL Flexible Server to use. Possible values are 11, 12 and 13.  Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | `"13"` | no |
| <a name="input_private_dns_zone_id"></a> [private\_dns\_zone\_id](#input\_private\_dns\_zone\_id) | The ID of the private dns zone to create the PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | `null` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The SKU Name for the PostgreSQL Flexible Server. The name of the SKU follows the tier + name pattern (e.g. GP\_Standard\_D2s\_v3, MO\_Standard\_E4s\_v3). High availability is not supported with burstable compute tier. | `string` | `"GP_Standard_D2s_v3"` | no |
| <a name="input_storage_mb"></a> [storage\_mb](#input\_storage\_mb) | The max storage allowed for the PostgreSQL Flexible Server, in megabytes. Possible values are 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, and 33554432. | `number` | `32768` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags which should be assigned to the PostgreSQL Flexible Server. | `map(string)` | <pre>{<br>  "terraform": "true"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_administrator_password"></a> [administrator\_password](#output\_administrator\_password) | The administrator password for the PostgreSQL flexible server. |
| <a name="output_this"></a> [this](#output\_this) | The PostgreSQL flexible server. |
<!-- END_TF_DOCS -->

## License

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
