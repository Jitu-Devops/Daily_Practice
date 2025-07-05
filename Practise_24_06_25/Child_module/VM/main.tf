
resource "azurerm_linux_virtual_machine" "jituvm" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  disable_password_authentication = false
  network_interface_ids = [data.azurerm_network_interface.jitunic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }
custom_data = base64encode(<<EOF
#!/bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
EOF
  )
  
}
resource "azurerm_network_interface_security_group_association" "jituns_association" {
  network_interface_id      = data.azurerm_network_interface.jitunic.id
  network_security_group_id = data.azurerm_network_security_group.jitunsg.id
}
