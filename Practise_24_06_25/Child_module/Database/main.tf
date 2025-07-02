resource "azurerm_mssql_database" "jitudb" {
 name                = var.database_name
  sku_name            = var.sku_name
  collation           = var.collation
  server_id           = data.azurerm_mssql_server.jituserver.id

  
}