resource "azurerm_resource_group" "rg" {
  name     = "${var.proj}-rg"
  location = var.default_location

  tags = {
    environment = "dev"
  }
}
