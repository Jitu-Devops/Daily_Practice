data "azurerm_mssql_server" "jituserver" {
    name                = var.sql_server_name
  resource_group_name = var.resource_group_name
}