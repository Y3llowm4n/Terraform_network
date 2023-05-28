resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.default_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true

  tags = {
    evironment = "production"
  }
}

resource "azurerm_storage_container" "container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "container" # "blob" "private"
}

resource "azurerm_storage_blob" "blob" {
  name                   = "install_web.sh"
  storage_account_name   = azurerm_storage_account.storage.name
  storage_container_name = azurerm_storage_container.container.name
  type                   = "Block"
  source                 = "install_web.sh"
}