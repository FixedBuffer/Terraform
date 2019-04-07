resource "azurerm_virtual_network" "vnet" {
  name                = "net"
  resource_group_name = "${azurerm_resource_group.terraformGroup.name}"
  location = "${azurerm_resource_group.terraformGroup.location}"
  address_space = ["10.1.0.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.6.6"]  
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet"
  resource_group_name  = "${azurerm_resource_group.terraformGroup.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  address_prefix = "10.1.0.0/24"
  service_endpoints = ["Microsoft.Storage","Microsoft.Web"]
}
