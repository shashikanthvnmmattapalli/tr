resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = "demosss"
  location                 = "East Us"
  account_tier             = "Standard" 
  account_replication_type = "LRS"

}


terraform {
  backend "azurerm" {
    resource_group_name  = "demosss"  
    storage_account_name = "strspr23"                      
    key                  = "dev-terraform.tfstate"
    container_name       = "demo"
    use_azuread_auth     = true         
}
}







