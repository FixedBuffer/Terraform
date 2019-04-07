resource "azurerm_resource_group" "terraformGroup" {
  name     = "${var.RESOURCE_GROUP_NAME}"
  location = "${var.AZURE_REGION}"

  tags = {
    environment = "develop"
  }
}