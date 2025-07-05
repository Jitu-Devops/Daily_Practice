resource "azurerm_virtual_network" "jituvnet" {
  name                = var.vnet_name
  location            = var.resource_group_location
  address_space       = var.address_space
  resource_group_name = var.resource_group_name
}