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
    key                  = "Shared_Resource/Prod.terraform.tfstate"
}

}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}