variable "resource_group_name" {
  type        = string
  description = "Specifies the name of the resource group that will be created."
}

variable "location" {
  type        = string
  description = "The location/region where Azure resource will be created."
  default     = "uksouth"
}

variable "key_vault_name" {
  type        = string
  description = "Specifies a key vault name"
}

variable "use_rbac_mode" {
  type        = bool
  description = "Specifies to use rbac mode. (Optional)"
  default     = null
}

variable "tags" {
  type        = map(any)
  description = "Specifies a map of tags to be applied to the resources created."
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

##################################
##################################

variable "storage_config" {
  type = list(object({
    name                      = string
    account_kind              = string
    account_tier              = string
    account_replication_type  = string
    access_tier               = string
    enable_https_traffic_only = bool
    min_tls_version           = string
    is_hns_enabled            = bool
  }))
}