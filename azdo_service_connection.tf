resource "azuredevops_serviceendpoint_github" "github" {
  project_id            = azuredevops_project.dotnet.id
  service_endpoint_name = "picccard"
  description           = ""
}
