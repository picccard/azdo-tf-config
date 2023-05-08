output "sample_terraform_project_project_id" {
  value = azuredevops_project.sample_terraform_project.id
}

output "dotnet_project_id" {
  value = azuredevops_project.dotnet.id
}

output "azure_iac_bicep_project_id" {
  value = azuredevops_project.azure_iac_bicep.id
}
