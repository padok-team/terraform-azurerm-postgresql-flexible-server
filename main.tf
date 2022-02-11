resource "azurerm_postgresql_flexible_server" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  administrator_login    = var.administrator_login
  administrator_password = coalesce(var.administrator_password, random_password.this.result)
  sku_name               = var.sku_name
  storage_mb             = var.storage_mb
  version                = var.pg_version
}

resource "random_password" "this" {
  count  = var.administrator_password ? 0 : 1
  length = 64
}
