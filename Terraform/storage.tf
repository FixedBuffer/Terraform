resource "random_id" "randomId" {
  keepers = {
    # Generate a new ID only when a new resource group is defined
    resource_group = "${azurerm_resource_group.terraformGroup.name}"
  }

  byte_length = 8
}

resource "azurerm_storage_account" "terraformStorageAccount" {
  name                     = "storage${random_id.randomId.hex}"
  resource_group_name      = "${azurerm_resource_group.terraformGroup.name}"
  location                 = "${var.AZURE_REGION}"
  account_replication_type = "${var.STORAGE_REPLICATION}"
  account_tier             = "${var.STORAGE_ACCOUNT_TIER}"

  network_rules {
    virtual_network_subnet_ids = ["${azurerm_subnet.subnet.id}"]
  }

}

resource "azurerm_storage_container" "container" {
  name                  = "containerfixedbuffer"
  resource_group_name   ="${azurerm_resource_group.terraformGroup.name}"
  storage_account_name  = "${azurerm_storage_account.terraformStorageAccount.name}"
  container_access_type = "private"
}

resource "azurerm_storage_blob" "blob" {
  name = "sample.vhd"

  resource_group_name    = "${azurerm_resource_group.terraformGroup.name}"
  storage_account_name   = "${azurerm_storage_account.terraformStorageAccount.name}"
  storage_container_name = "${azurerm_storage_container.container.name}"

  type = "page"
  size = 5120
}
