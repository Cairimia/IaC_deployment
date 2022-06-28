#Create a Key Vault for the Resource Group
resource "azurerm_storage_account" "sas" {
  name                     = "testcata${var.environment_def}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_account" "mas" {
  name                     = "testcata${var.environment_def}1"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_account" "mas_08" {
  name                     = "testcata${var.environment_def}08"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}