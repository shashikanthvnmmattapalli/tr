terraform {

  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

 backend "azurerm" {
    resource_group_name  = "demosss"  
    storage_account_name = "strspr23"                      
    key                  = "dev-terraform.tfstate"
    container_name       = "demo"
    use_azuread_auth     = true         
}
