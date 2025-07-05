variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string

  
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}
variable "address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}
variable "vnet_name" {
  description = "The name of the virtual network to which the subnet belongs."
  type        = string
}