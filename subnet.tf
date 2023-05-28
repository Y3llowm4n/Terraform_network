resource "azurerm_subnet" "terraform_subnet" {
  name                 = "terraform-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.terraform_vnet.name
  address_prefixes     = ["192.168.1.0/24"]
}