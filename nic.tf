# Create network interface
resource "azurerm_network_interface" "terraform_nic" {
  name                = "terraform_nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "terraform_nic_config"
    subnet_id                     = azurerm_subnet.terraform_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.web_public_ip.id
  }

  tags = {
    evironment = "production"
  }
}

resource "azurerm_network_interface_security_group_association" "association" {
  network_interface_id      = azurerm_network_interface.terraform_nic.id
  network_security_group_id = azurerm_network_security_group.terraform-nsg.id
}