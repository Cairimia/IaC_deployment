terraform {
  required_version = "~> 1.2.0"
  backend "azurerm" {
    resource_group_name  = "IaC-Deployment-RG-dev"
    storage_account_name = "iacsadev"
    container_name       = "tfstateiac"
    key                  = "terraform.dev.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.8.0"
    }
  }
}
provider "azurerm" {
  version = "=2.0.0"
  features {}
}