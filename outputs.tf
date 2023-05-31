output "storage_account_id" {
  value = azurerm_storage_account.storage.id
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.storage.primary_blob_endpoint
}

output "blob_url" {
  value = azurerm_storage_blob.blob.url
}

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.lin_vm_1.public_ip_address
}

