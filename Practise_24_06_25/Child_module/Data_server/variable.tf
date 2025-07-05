variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string
  
  
}
variable "resource_group_location" {
  description = "The Azure location where the resource group will be created."
  type        = string
  
  
}
variable "sql_server_name" {
  description = "The name of the SQL server to create."
  type        = string

}
variable "sql_admin_username" {
  description = "The admin username for the SQL server."
  type        = string

}
variable "sql_admin_password" {
  description = "The admin password for the SQL server."
  type        = string

}