resource "azurerm_virtual_network" "terraform_vnet" {
  name                = "terraform-vnet"
  address_space       = ["192.168.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}