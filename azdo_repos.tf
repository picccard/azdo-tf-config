resource "azuredevops_git_repository" "azure_iac_bicep" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "Azure-IaC-Bicep"
  initialization {
    init_type = "Uninitialized"
  }
}


resource "azuredevops_git_repository" "azurelandingzone" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "AzureLandingZone"
  initialization {
    init_type = "Uninitialized"
  }
}


resource "azuredevops_git_repository" "ipam" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "ipam"
  initialization {
    init_type = "Uninitialized"
  }
  /*lifecycle {
    ignore_changes = [
      initialization,
    ]
  }*/
  /*
  remove the need for lifecycle by modifying state for the repo, from
  "initialization": [],
  to
  "initialization": [
        {
        "init_type": "Uninitialized"
        }
    ],
  */
}
