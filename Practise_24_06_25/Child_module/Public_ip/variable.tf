variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string
  
  
}
variable "resource_group_location" {
  description = "The Azure location where the resource group will be created."
  type        = string
 
}
variable "public_ip_name" {
  description = "The name of the public IP address."
  type        = string
}
variable "allocation_method" {
  description = "The allocation method for the public IP address (Static or Dynamic)."
  type        = string
 
}
variable "sku" {
  description = "The SKU of the public IP address (Basic or Standard)."
  type        = string
}
