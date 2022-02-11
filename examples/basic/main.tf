provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "my-rd"
  location = "West Europe"
}

module "flexible-postgresql" {
  source = "../"

  name                   = "example-flexible-postgresql"
  resource_group_name    = azurerm_resource_group.example.name
  location               = module.rg.this.location
  administrator_login    = "admin"
  administrator_password = random_password.password.result
  sku_name               = "B_Standard_B1ms"
  storage_mb             = 32768
}
