terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "vivek-storage-account-rg"
    storage_account_name = "storage285002"
    container_name       = "container1"
    key                  = "vivek.tfstate02"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "86c2c7ab-0841-425a-9004-95c83c2075de"
}
