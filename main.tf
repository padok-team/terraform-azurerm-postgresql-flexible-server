resource "random_password" "this" {
  # Generate a random password if the administrator_password is not set
  count  = var.administrator_password != null ? 0 : 1
  length = 64
}

resource "azurerm_postgresql_flexible_server" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password != null ? var.administrator_password : random_password.this[0].result
  sku_name               = var.sku_name
  storage_mb             = var.storage_mb
  version                = var.pg_version

  delegated_subnet_id = var.delegated_subnet_id
  private_dns_zone_id = var.private_dns_zone_id

  backup_retention_days        = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled

  high_availability {
    mode = "ZoneRedundant"
  }

  tags = var.tags
}
