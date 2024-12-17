provider "azurerm" {
  features {}

}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "myresource"
  location = "eastus"
}

# Create a storage account
resource "azurerm_storage_account" "st" {
  name                     = "nammu421"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}