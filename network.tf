resource "azurerm_virtual_network" "vnet_prod_westeu_001" {
  name                = "vnet_prod_westeu_001"
  address_space       = ["10.10.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "snet_lan_westeu_001" {
  name                 = "snet_pop_westeu_001"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet_prod_westeu_001.name
  address_prefixes     = ["10.10.1.0/24"]
}

resource "azurerm_subnet" "snet_db_westeu_001" {
  name                 = "snet_db_westeu_001"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet_prod_westeu_001.name
  address_prefixes     = ["10.10.2.0/24"]
}