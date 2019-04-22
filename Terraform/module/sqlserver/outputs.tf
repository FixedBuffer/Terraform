output "conection_string_value" {
  description = "Sql Server ConnectionString"
  value = "Server=${azurerm_sql_server.sqlServer.fully_qualified_domain_name};Initial Catalog=${azurerm_sql_database.sqlServerDb.name};User Id=${var.SQL_ADMIN_ID};Password=${var.SQL_PASSWORD};"
}