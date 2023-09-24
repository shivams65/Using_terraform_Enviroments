terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.74.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Shivam-resourcegroup"
    storage_account_name = "shivamrgtfstate"
    container_name       = "tfstate"
    key                  = "RG/Dev.terraform.tfstate"
}

}

provider "azurerm" {
  features {}
}