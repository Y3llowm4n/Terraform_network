# Create network interface webserver
resource "azurerm_network_interface" "nic_py_001" {
  name                = "nic_py_001"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "nic_py_config"
    subnet_id                     = azurerm_subnet.snet_lan_westeu_001.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.10.1.10"
    public_ip_address_id          = azurerm_public_ip.pip_pyvm_prod_westeu_001.id

  }

  tags = {
    evironment = "production"
  }
}

resource "azurerm_network_interface_security_group_association" "association" {
  network_interface_id      = azurerm_network_interface.nic_py_001.id
  network_security_group_id = azurerm_network_security_group.nsg_py_prod_001.id
}


# Create network interface monitor server
resource "azurerm_network_interface" "nic_mon_001" {
  name                = "nic_mon_001"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "nic_mon_config"
    subnet_id                     = azurerm_subnet.snet_mon_westeu_001.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.10.2.10"
  }

  tags = {
    evironment = "production"
  }
}

resource "azurerm_network_interface_security_group_association" "association_mon" {
  network_interface_id      = azurerm_network_interface.nic_mon_001.id
  network_security_group_id = azurerm_network_security_group.nsg_mon_prod_001.id
}
