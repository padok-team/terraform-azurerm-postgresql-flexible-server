provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "my-rg"
  location = "West Europe"
}

module "flexible-postgresql" {
  source = "../.."

  name                   = "example-flexible-postgresql"
  resource_group_name    = azurerm_resource_group.example.name
  location               = azurerm_resource_group.example.location
  administrator_login    = "admintest"
  administrator_password = "P4d0k!"

  sku_name   = "B_Standard_B1ms"
  storage_mb = 32768
}
