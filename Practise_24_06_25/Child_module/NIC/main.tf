
resource "azurerm_network_interface" "jitunic" {
  name                = var.nic_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = data.azurerm_subnet.jitusubnet.id
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id          = data.azurerm_public_ip.jitupip.id
  }

 
  
}