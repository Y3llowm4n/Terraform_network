resource "azurerm_sql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = var.sql_administrator_login
  administrator_login_password = var.sql_administrator_login_password



  tags = {
    environment = "dev"
  }
}

# Firewall rule acces from school
resource "azurerm_sql_firewall_rule" "sql_fwrule_school" {
  name                = "FirewallRule1"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_sql_server.sql_server.name
  start_ip_address    = "145.93.72.140"
  end_ip_address      = "145.93.72.140"
}

# Firewall rule acces from home
# resource "azurerm_sql_firewall_rule" "sql_fwrule_home" {
#   name                = "FirewallRule1"
#   resource_group_name = azurerm_resource_group.rg.name
#   server_name         = azurerm_sql_server.sql_server.name
#   start_ip_address    = "145.93.72.140"
#   end_ip_address      = "145.93.72.140"
# }


resource "azurerm_sql_database" "sql_db" {
  name                = var.sql_database_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  server_name         = azurerm_sql_server.sql_server.name

  tags = {
    environment = "dev"
  }
}