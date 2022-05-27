resource_group_name = "IaC-Deployment-RG-dev"
location            = "westeurope"
key_vault_name      = "new-dev-kv"
use_rbac_mode       = true
tags = {
  terraformDeployment = "true",
  GithubRepo          = "https://github.com/Cairimia/IaC_deployment"
  Environment         = "DEV"
}

storage_config = [
  #V2 Storage
  {
    name                      = "newv2devsa"
    account_kind              = "StorageV2"
    account_tier              = "Standard"
    account_replication_type  = "LRS"
    min_tls_version           = "TLS1_2"
    enable_https_traffic_only = true
    access_tier               = "Cool"
    is_hns_enabled            = false
  },
  #ADLS2 Storage
  {
    name                      = "newadls2devsa"
    account_kind              = "BlockBlobStorage"
    account_tier              = "Premium"
    account_replication_type  = "ZRS"
    min_tls_version           = "TLS1_2"
    enable_https_traffic_only = false
    access_tier               = "Hot"
    is_hns_enabled            = true
  }
]