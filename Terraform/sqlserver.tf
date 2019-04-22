module "sqlserver" {
  source                         = "./module/sqlserver"
  SQL_SERVER_RESOURCE_GROUP_NAME = "${azurerm_resource_group.terraformGroup.name}"
  SQL_SERVER_NAME                = "${var.SQL_SERVER_NAME}"
  SQL_SERVER_LOCATION            = "${azurerm_resource_group.terraformGroup.location}"
  SQL_SERVER_VERSION             = "${var.SQL_SERVER_VERSION}"
  SQL_ADMIN_ID                   = "${var.SQL_ADMIN_ID}"
  SQL_PASSWORD                   = "${var.SQL_PASSWORD}"
  SQL_DB_NAME                    = "${var.SQL_DB_NAME}"
}