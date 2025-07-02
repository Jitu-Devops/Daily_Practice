variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string
  
  
}
variable "resource_group_location" {
  description = "The Azure location where the resource group will be created."
  type        = string
  
  
}
variable "nic_name" {
  description = "The name of the network interface to create."
  type        = string
  
}
variable "vm_name" {
  description = "The name of the virtual machine to create."
  type        = string

}
variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string

}
variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string

}
variable "admin_password" {
  description = "The admin password for the virtual machine."
  type        = string

}

variable "image_publisher" {
  description = "The publisher of the image to use for the virtual machine."
  type        = string
  
}
variable "image_offer" {
  description = "The offer of the image to use for the virtual machine."
  type        = string

}
variable "image_sku" {
  description = "The SKU of the image to use for the virtual machine."
  type        = string

}
variable "image_version" {
  description = "The version of the image to use for the virtual machine."
  type        = string

}
variable "nsg_name" {
  description = "The name of the network security group to associate with the virtual machine."
  type        = string
  
}