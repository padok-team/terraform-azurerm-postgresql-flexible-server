# Azurerm PostgreSQL flexible server Terraform module

Terraform module which creates PostgreSQL flexible server resources on Azurerm.

## User Stories for this module

- AASRE I have an Azurerm flexible PostgreSQL server

## Usage

```hcl
#TODO: use random password
module "rg" {
  source   = "git@github.com:padok-team/terraform-azurerm-resource-group.git?ref=v0.0.2"
  name     = "example-flexible-postgresql"
  location = "West Europe"
}

module "flexible-postgresql" {
  source = "git@github.com:padok-team/terraform-azurerm-postgresql-flexible-server.git?ref=v0.0.1"

  name                   = "example"
  resource_group_name    = module.rg.this.name
  location               = module.rg.this.location
  administrator_login    = "padok"
  administrator_password = "p@d0k!"
  sku_name               = "B_Standard_B1ms"
  storage_mb             = 32768
}
```

## Examples

- [Example of use case](example/main.tf)

<!-- BEGIN_TF_DOCS -->
## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrator_login"></a> [administrator\_login](#input\_administrator\_login) | The Administrator Login for the PostgreSQL Flexible Server. Required when create\_mode is Default. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | n/a | yes |
| <a name="input_administrator_password"></a> [administrator\_password](#input\_administrator\_password) | The Password associated with the administrator\_login for the PostgreSQL Flexible Server. Required when create\_mode is Default. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the tier + name pattern (e.g. B\_Standard\_B1ms, GP\_Standard\_D2s\_v3, MO\_Standard\_E4s\_v3). | `string` | n/a | yes |
| <a name="input_storage_mb"></a> [storage\_mb](#input\_storage\_mb) | The max storage allowed for the PostgreSQL Flexible Server. Possible values are 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, and 33554432 | `string` | n/a | yes |
| <a name="input_pg_version"></a> [pg\_version](#input\_pg\_version) | The version of PostgreSQL Flexible Server to use. Possible values are 11,12 and 13. Required when create\_mode is Default. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | `"13"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | The PostgreSQL fleible server |
<!-- END_TF_DOCS -->
