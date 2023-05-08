provider "azurerm" {
  features {}
}

provider "azuredevops" {
  org_service_url       = var.azdo_url
  personal_access_token = var.azdo_pat
}
