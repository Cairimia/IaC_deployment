terraform {
  required_providers {
    local = {
      version = "=1.4.0"
    }
    null = {
      version = "=3.1.0"
    }
    random = {
      version = "=2.2.1"
    }
    azurerm = {
      version = "=2.70.0"
    }
  }
  required_version = ">= 0.14"
}



provider "local" {

}

provider "null" {

}

provider "random" {

}

provider "azurerm" {
  skip_provider_registration = "true"
  features {
    key_vault {
      recover_soft_deleted_key_vaults = false
      purge_soft_delete_on_destroy    = false
    }
  }
}

variable "location" {
  type = map(string)
}

variable "environment" {
  type = string
}

variable "unique_string" {
  type = string
}
variable "resource_group_name" {
  type = string
}

variable "project" {
  type = string
}

variable "project_iteration" {
  type = number
}

variable "binding_tags" {
  type    = map(string)
  default = {}

  description = "Binding tags defined by resource"
}

locals {
  project_tags = merge(
    var.binding_tags,
    {
      "environment" = var.environment
    }
  )
}

variable "keyvault_name" {
  type = string
}

variable "keyvault_unique_string" {
  type = string
}

variable "function_storage_account_replication_type" {
  type = string
}