resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = "demosss"
  location                 = "East Us"
  account_tier             = "Standard" 
  account_replication_type = "LRS"

}










