resource "azurerm_public_ip" "web_public_ip" {
  name                = "terraform_public_ip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"

  tags = {
    evironment = "production"
  }
}