variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string
 
  
}
variable "resource_group_location" {
  description = "The Azure location where the resource group will be created."
  type        = string
  
  
}
variable "vnet_name" {
  description = "The name of the virtual network to create."
  type        = string
}
variable "subnet_name" {
  description = "The name of the subnet to create."
  type        = string
}
variable "public_ip_name" {
  description = "The name of the public IP address to create."
  type        = string
  
}
variable "nic_name" {
  description = "The name of the network interface to create."
  type        = string
}
variable "ip_configuration_name" {
  description = "The name of the IP configuration for the network interface."
  type        = string
  
}
variable "private_ip_address_allocation" {
  description = "The private IP address allocation method (Static or Dynamic)."
  type        = string
  
}