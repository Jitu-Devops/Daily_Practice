data "azurerm_network_interface" "jitunic" {
  name                = var.nic_name
  resource_group_name = var.resource_group_name
}
data "azurerm_network_security_group" "jitunsg" {
  name                = var.nsg_name
  resource_group_name = var.resource_group_name
}