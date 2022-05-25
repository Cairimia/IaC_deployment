# environment
resource_group_name = "IaC-Deployment-RG-pro"
environment         = "pro"

unique_string = "888"

function_storage_account_replication_type = "LRS"

# Environment Location
location = {
  name = "westeurope" // region
  code = "weu1"       // used in the resource group name
}

# Imported resources
keyvault_name          = "iac-kv-pro"
keyvault_unique_string = "001"

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