resource "azurerm_sql_server" "sqlServer" {
  name                         = "${var.SQL_SERVER_NAME}"
  resource_group_name          = "${azurerm_resource_group.terraformGroup.name}"
  location                     = "${azurerm_resource_group.terraformGroup.location}"
  version                      = "${var.SQL_SERVER_VERSION}"
  administrator_login          = "${var.SQL_ADMIN_ID}"
  administrator_login_password = "${var.SQL_PASSWORD}"
}

resource "azurerm_sql_database" "sqlServerDb" {
  name                = "${var.SQL_DB_NAME}"
  resource_group_name = "${azurerm_resource_group.terraformGroup.name}"
  location            = "${azurerm_resource_group.terraformGroup.location}"
  server_name         = "${azurerm_sql_server.sqlServer.name}"
}

resource "azurerm_sql_firewall_rule" "sql_firewall_rule_1" {
  name                = "FirewallRule1"
  resource_group_name = "${azurerm_resource_group.terraformGroup.name}"
  server_name         = "${azurerm_sql_server.sqlServer.name}"
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}