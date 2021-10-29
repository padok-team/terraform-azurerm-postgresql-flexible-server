provider "azurerm" {
  features {}
}

locals {
  name = "example-flexible-postgresql"
}

module "rg" {
  source   = "git@github.com:padok-team/terraform-azurerm-resource-group.git?ref=v0.0.2"
  name     = local.name
  location = "West Europe"
}

module "flexible-postgresql" {
  source = "../"

  name                   = local.name
  resource_group_name    = module.rg.this.name
  location               = module.rg.this.location
  administrator_login    = "padok"
  administrator_password = "p@d0k!"
  sku_name               = "B_Standard_B1ms"
  storage_mb             = 32768
}

