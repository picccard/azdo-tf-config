resource "azuredevops_branch_policy_work_item_linking" "default_branch_policy_work_item" {
  project_id = azuredevops_project.azure_iac_bicep.id
  enabled    = true
  blocking   = false

  settings {
    scope {
      match_type = "DefaultBranch"
    }
  }
}


resource "azuredevops_branch_policy_build_validation" "alz_accelerator_pr_1" {
  project_id = azuredevops_project.azure_iac_bicep.id
  enabled    = true
  blocking   = false

  settings {
    display_name        = "ALZ Accelerator PR 1"
    build_definition_id = azuredevops_build_definition.alz_accelerator_pr_1.id
    filename_patterns = [
      "*/bicepconfig.json",
      "*.bicep",
    ]

    scope {
      repository_id  = azuredevops_git_repository.azurelandingzone.id
      repository_ref = azuredevops_git_repository.azurelandingzone.default_branch
      match_type     = "Exact"
    }
  }
}


resource "azuredevops_branch_policy_build_validation" "alz_accelerator_pr_2" {
  project_id = azuredevops_project.azure_iac_bicep.id
  enabled    = true
  blocking   = false

  settings {
    display_name        = "ALZ Accelerator PR 2"
    build_definition_id = azuredevops_build_definition.alz_accelerator_pr_2.id

    scope {
      repository_id  = azuredevops_git_repository.azurelandingzone.id
      repository_ref = azuredevops_git_repository.azurelandingzone.default_branch
      match_type     = "Exact"
    }
  }
}
