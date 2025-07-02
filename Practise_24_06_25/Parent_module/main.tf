module "resource_group" {
  source = "../Child_module/Resource_group"

  resource_group_name     = "rgjitu"
  resource_group_location = "australiaeast"

}
module "vnet" {
  source                  = "../Child_module/Vnet"
  depends_on              = [module.resource_group]
  resource_group_name     = "rgjitu"
  resource_group_location = "australiaeast"
  vnet_name               = "jituvnet"
  address_space           = ["10.0.0.0/16"]
}
module "subnet" {
  source              = "../Child_module/Subnet"
  depends_on          = [module.vnet]
  subnet_name         = "jitusubnet"
  resource_group_name = "rgjitu"
  vnet_name           = "jituvnet"
  address_prefixes    = ["10.0.1.0/24"]

}
module "jitupip" {
  source                  = "../Child_module/Public_ip"
  depends_on              = [module.subnet]
  resource_group_name     = "rgjitu"
  resource_group_location = "australiaeast"
  public_ip_name          = "jitupip"
  allocation_method       = "Static"
  sku                     = "Standard"

}
module "jitunic" {
  source                        = "../Child_module/NIC"
  depends_on                    = [module.jitupip, module.subnet]
  resource_group_name           = "rgjitu"
  resource_group_location       = "australiaeast"
  vnet_name                     = "jituvnet"
  subnet_name                   = "jitusubnet"
  public_ip_name                = "jitupip"
  nic_name                      = "jitunic"
  ip_configuration_name         = "ipconfig1"
  private_ip_address_allocation = "Dynamic"

}
module "jituvm" {
  source                  = "../Child_module/VM"
  depends_on              = [module.jitunic]
  resource_group_name     = "rgjitu"
  resource_group_location = "australiaeast"
  vm_name                 = "jituvm"

  vm_size        = "Standard_B1s"
  admin_username = "azureuser"
  admin_password = "P@ssw0rd1234!"


  image_publisher = "Canonical"
  image_offer     = "0001-com-ubuntu-server-jammy"
  image_sku       = "22_04-LTS"
  image_version   = "latest"
  nic_name        = "jitunic"
  nsg_name        = "jitunsg"
}
module "jitunsg" {
  source                  = "../Child_module/NSG"
  depends_on              = [module.resource_group]
  resource_group_name     = "rgjitu"
  resource_group_location = "australiaeast"
  nsg_name                = "jitunsg"

}
module "jituserver" {
  source                  = "../Child_module/Data_server"
  depends_on              = [module.resource_group]
  resource_group_name     = "rgjitu"
  resource_group_location = "australiaeast"
  sql_server_name         = "jituserver"
  sql_admin_username      = "sqladmin"
  sql_admin_password      = "P@ssw0rd1234!"
}
module "jitudb" {
  source              = "../Child_module/Database"
  depends_on          = [module.jituserver]
  resource_group_name = "rgjitu"

  sql_server_name = "jituserver"
  database_name   = "jitudb"
  collation       = "SQL_Latin1_General_CP1_CI_AS"
  sku_name        = "GP_Gen5_2"
}
# Hello
#how are you
# I am fine
# I am learning terraform
# I am learning how to create a resource group, vnet, subnet, public ip,