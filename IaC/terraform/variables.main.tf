# Provider Variables
variable "azurerm_subscription_id" {
  type = string
}
variable "azurerm_client_id" {
  type = string
}
variable "azurerm_client_secret" {
  type = string
}
variable "azurerm_tenant_id" {
  type = string
}

# Project Variables
variable "business_unit" {
  type = string
}
variable "department" {
  type = string
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

variable "group_object_id" {
  type = string
}

variable "keyvault_unique_string" {
  type = string
}

variable "function_storage_account_replication_type" {
  type = string
}