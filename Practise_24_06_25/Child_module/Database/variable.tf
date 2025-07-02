variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string
  
  
}
variable "sql_server_name" {
  description = "The name of the SQL server to create."
  type        = string

}
variable "database_name" {
  description = "The name of the database to create."
  type        = string  
  
}
variable "sku_name" {
  description = "The SKU name for the SQL database."
  type        = string  
  
}
variable "collation" {
  description = "The collation for the SQL database."
  type        = string

}