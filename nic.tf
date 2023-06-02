# Create network interface
resource "azurerm_network_interface" "nic_py_001" {
  name                = "nic_py_001"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "nic_py_config"
    subnet_id                     = azurerm_subnet.snet_pop_westeu_001.id
    private_ip_address_allocation = "Static"
    public_ip_address_id          = azurerm_public_ip.pip_pyvm_prod_westeu_001.id
    public_ip_adress_allocation   = "Static"
  }

  tags = {
    evironment = "production"
  }
}

resource "azurerm_network_interface_security_group_association" "association" {
  network_interface_id      = azurerm_network_interface.nic_py_001.id
  network_security_group_id = azurerm_network_security_group.nsg_py_prod_001.id
}