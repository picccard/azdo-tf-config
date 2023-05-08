resource "azuredevops_build_folder" "az_firewall" {
  project_id = azuredevops_project.azure_iac_bicep.id
  path       = "\\Az Firewall"
}

resource "azuredevops_build_folder" "alz_accelerator" {
  project_id = azuredevops_project.azure_iac_bicep.id
  path       = "\\ALZ - Accelerator"
}
