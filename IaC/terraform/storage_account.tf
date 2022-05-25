#### Storage Account for all functions ####
resource "azurerm_storage_account" "sa_IaC" {
  name                     = "${var.project}sta${var.location.code}${var.environment}${var.unique_string}"
  location                 = var.location.name
  resource_group_name      = var.resource_group_name
  account_tier             = "Standard"
  account_replication_type = var.function_storage_account_replication_type
}