# Get info about current client
data "azurerm_client_config" "current" {}


#### Import existing Keyvault Function App ####
data "azurerm_key_vault" "app_keyvault" {
  name                = var.keyvault_name
  resource_group_name = var.resource_group_name
}
