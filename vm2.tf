resource "azurerm_linux_virtual_machine" "vm_mon_001" {
  name                  = var.computer_name2
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  computer_name         = var.computer_name2
  admin_username        = var.admin_username2
  admin_password        = var.admin_password2
  network_interface_ids = [azurerm_network_interface.nic_mon_001.id]
  size                  = "Standard_B1s"

  admin_ssh_key {
    username   = var.admin_username2
    public_key = tls_private_key.linux_key2.public_key_openssh
  }

  os_disk {
    name                 = "MonOsDisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
  boot_diagnostics {
    storage_account_uri = azurerm_storage_account.st_pop_001.primary_blob_endpoint
  }

  depends_on = [
    tls_private_key.linux_key2
  ]
  tags = {
    evironment = "production"
  }
}
