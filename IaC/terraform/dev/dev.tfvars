resource_group_name = "IaC-Deployment-RG-dev"
location            = "westeurope"
key_vault_name      = "iac-kv-dev"
environment_def     = "dev"
use_rbac_mode       = true
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/Pwd9000-ML/Azure-Terraform-Deployments"
  Environment         = "DEV"
}