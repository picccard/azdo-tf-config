resource "azuredevops_project" "sample_terraform_project" {
  name               = "Sample-Terraform-Project"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = "Sample Azure DevOps Project Created Using Terraform"
  features = {
    "boards"       = "enabled"
    "repositories" = "enabled"
    "pipelines"    = "enabled"
    "testplans"    = "disabled"
    "artifacts"    = "disabled"
  }
}

resource "azuredevops_project" "dotnet" {
  name               = "dotnet"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Basic"
  description        = ""
}

resource "azuredevops_project" "azure_iac_bicep" {
  name               = "Azure-IaC-Bicep"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Basic"
  description        = ""
}
