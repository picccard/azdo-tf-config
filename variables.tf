variable "azdo_pat" {
  description = "Personal Access token with permissions to create azdo resources"
  type        = string
  sensitive   = true
}

variable "azdo_url" {
  description = "URL to the Azure DevOps Organization"
  type        = string
  default     = "https://dev.azure.com/fabrikam"
}
