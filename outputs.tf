output "storage_account_id" {
  value = azurerm_storage_account.st_pop_001.id
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.st_pop_001.primary_blob_endpoint
}

output "blob_url" {
  value = azurerm_storage_blob.bb_py_001.url
}

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.vm_py_001.public_ip_address
}

