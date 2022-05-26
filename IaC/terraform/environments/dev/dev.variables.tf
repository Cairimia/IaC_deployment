terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.99.0"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "IaC-Deployment-RG-dev"
    storage_account_name = "iacsadev"
    container_name       = "state"
    key                  = "dev.tfstate"
  }
}