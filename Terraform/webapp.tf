//Consumimos el modulo de la web pasandole los datos necesarios, como la cadena de conexión
module "linuxwebapp" {
  source                 = "./module/webapp"
  name                   = "${azurerm_resource_group.terraformGroup.name}"
  location               = "${azurerm_resource_group.terraformGroup.location}"
  resource_group_name    = "${azurerm_resource_group.terraformGroup.name}"
  service_plan_name      = "${azurerm_resource_group.terraformGroup.name}"
  conection_string_value = "${module.sqlserver.conection_string_value}"
}
