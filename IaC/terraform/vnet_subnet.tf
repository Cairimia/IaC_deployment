#### VNET ####
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.project}-vnet-${var.environment}"
  address_space       = ["10.0.0.0/16"]
  location            = var.location.name
  resource_group_name = var.resource_group_name
}

#### Subnet ####
resource "azurerm_subnet" "subnet" {
  name                 = "${var.project}-subnet-${var.environment}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
  delegation {
    name = "example-delegation"
    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}
 