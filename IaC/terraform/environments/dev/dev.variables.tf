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

# DEFAULT PROJECT INFO
# Department
business_unit = "digital"
department    = "digital"

# Location
location = {
  name = "westeurope" // region
  code = "weu1"       // used in the resource group name
}

project           = "redaia"
project_iteration = 01

# Tags
binding_tags = {
  app                = "redaia"
  businesscontact    = ""
  managedby          = ""
  svc                = ""
  dataclassification = "internal"
  compliance         = ""
  manteinancewindow  = ""
  schedule           = ""
  expirationdate     = ""
  description        = "Voice interaction"
  project            = "IAC"
  businessunit       = "digital"
  costcenter         = "digital"
  buildby            = "IAC"
}


