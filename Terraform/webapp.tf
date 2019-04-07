module "linuxwebapp" {
  source                  = "./module/webapp"
  name                    = "${azurerm_resource_group.terraformGroup.name}"
  location                = "${azurerm_resource_group.terraformGroup.location}"
  resource_group_name     = "${azurerm_resource_group.terraformGroup.name}"
  conection_string_value = "Server=${azurerm_sql_server.sqlServer.fully_qualified_domain_name};Initial Catalog=${azurerm_sql_database.sqlServerDb.name};User Id=${var.SQL_ADMIN_ID};Password=${var.SQL_PASSWORD};"
}
