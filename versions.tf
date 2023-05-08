terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.55.0"
    }
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">=0.5.0"
    }
  }

  backend "azurerm" {}
}
