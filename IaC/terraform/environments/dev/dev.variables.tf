provider "azurerm" {
  version = "=2.0.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "digital-redeauia-rsg-weu1-dev"
    storage_account_name = "iacsadev"
    container_name       = "state"
    key                  = "dev.tfstate"
  }
}