resource "azurerm_public_ip" "pip_pyvm_prod_westeu_001" {
  name                = "pip_pyvm_prod_westeu_001"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"

  tags = {
    evironment = "production"
  }
}