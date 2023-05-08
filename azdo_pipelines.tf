resource "azuredevops_build_definition" "picccard_dotnet" {
  project_id = azuredevops_project.dotnet.id
  name       = "picccard.dotnet"

  ci_trigger {
    use_yaml = true
  }

  pull_request_trigger {
    initial_branch = "main"
    use_yaml       = true
    forks {
      enabled       = true
      share_secrets = true
    }
  }

  repository {
    repo_type             = "GitHub"
    repo_id               = "picccard/dotnet"
    branch_name           = "main"
    yml_path              = "azure-pipelines.yml"
    service_connection_id = azuredevops_serviceendpoint_github.github.id
  }
}


resource "azuredevops_build_definition" "azfw_start" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "Az Firewall  - Start"
  path       = azuredevops_build_folder.az_firewall.path

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.azurelandingzone.id
    branch_name = azuredevops_git_repository.azurelandingzone.default_branch
    yml_path    = "pipelines/azure-fw/azure-fw-start.yml"
  }
}


resource "azuredevops_build_definition" "azfw_stop" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "Az Firewall - Stop"
  path       = azuredevops_build_folder.az_firewall.path

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.azurelandingzone.id
    branch_name = azuredevops_git_repository.azurelandingzone.default_branch
    yml_path    = "pipelines/azure-fw/azure-fw-stop.yml"
  }
}


resource "azuredevops_build_definition" "az_bastion_delete" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "Az Bastion - Delete"
  path       = "\\"

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.azurelandingzone.id
    branch_name = azuredevops_git_repository.azurelandingzone.default_branch
    yml_path    = "pipelines/azure-bastion/azure-bastion-delete.yml"
  }
}


resource "azuredevops_build_definition" "alz_accelerator1" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "ALZ - Accelerator 1"
  path       = azuredevops_build_folder.alz_accelerator.path

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.azurelandingzone.id
    branch_name = azuredevops_git_repository.azurelandingzone.default_branch
    yml_path    = "accelerator/.azuredevops/pipelines/alz-bicep-1.yml"
  }
}


resource "azuredevops_build_definition" "alz_accelerator2" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "ALZ - Accelerator 2"
  path       = azuredevops_build_folder.alz_accelerator.path

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.azurelandingzone.id
    branch_name = azuredevops_git_repository.azurelandingzone.default_branch
    yml_path    = "accelerator/.azuredevops/pipelines/alz-bicep-2.yml"
  }
}


resource "azuredevops_build_definition" "alz_accelerator3" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "ALZ - Accelerator 3"
  path       = azuredevops_build_folder.alz_accelerator.path

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.azurelandingzone.id
    branch_name = azuredevops_git_repository.azurelandingzone.default_branch
    yml_path    = "accelerator/.azuredevops/pipelines/alz-bicep-3.yml"
  }
}


resource "azuredevops_build_definition" "alz_accelerator4a" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "ALZ - Accelerator 4a"
  path       = azuredevops_build_folder.alz_accelerator.path

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.azurelandingzone.id
    branch_name = azuredevops_git_repository.azurelandingzone.default_branch
    yml_path    = "accelerator/.azuredevops/pipelines/alz-bicep-4a.yml"
  }
}


resource "azuredevops_build_definition" "alz_accelerator_pr_1" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "ALZ - Accelerator PR 1"
  path       = azuredevops_build_folder.alz_accelerator.path

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.azurelandingzone.id
    branch_name = azuredevops_git_repository.azurelandingzone.default_branch
    yml_path    = "accelerator/.azuredevops/pipelines/alz-bicep-pr-1.yml"
  }
}


resource "azuredevops_build_definition" "alz_accelerator_pr_2" {
  project_id = azuredevops_project.azure_iac_bicep.id
  name       = "ALZ - Accelerator PR 2"
  path       = azuredevops_build_folder.alz_accelerator.path

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.azurelandingzone.id
    branch_name = azuredevops_git_repository.azurelandingzone.default_branch
    yml_path    = "accelerator/.azuredevops/pipelines/alz-bicep-pr-2.yml"
  }
}
