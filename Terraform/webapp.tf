module "linuxwebapp" {
  source              = "./module/webapp"
  name                = "${azurerm_resource_group.terraformGroup.name}"
  location            = "${azurerm_resource_group.terraformGroup.location}"
  resource_group_name = "${azurerm_resource_group.terraformGroup.name}"
  network_name        = "${azurerm_virtual_network.vnet.name}"
}
