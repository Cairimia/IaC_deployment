# environment
resource_group_name = "digital-redeauia-rsg-weu1-dev"
environment         = "dev"

unique_string = "001"

function_storage_account_replication_type = "LRS"

# app service plan
app_sp_tier = "PremiumV2"
app_sp_size = "P1v2"
app_sp_kind = "elastic"
# sdk_app_sp_tier = "PremiumV2"
# sdk_app_sp_size = "P1v2"

# function app site_config
always_on_config                 = "true"
pre_warmed_instance_count_config = "0"


# URL function test
## function_url_zip = "https://github.com/miguelassan001/nodeazfunction/raw/master/aee24b5f720a7048565ffffa012b2bc3.zip"

# analytics
log_analytics_retention_in_days = 30
log_analytics_sku               = "pergb2018"


# Environment Location
location = {
  name = "westeurope" // region
  code = "weu1"       // used in the resource group name
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


