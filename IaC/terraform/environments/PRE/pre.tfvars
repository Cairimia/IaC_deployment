# environment
resource_group_name = "IaC-Deployment-RG-pre"
environment         = "pre"

unique_string = "001"

function_storage_account_replication_type = "LRS"

# Environment Location
location = {
  name = "westeurope" // region
  code = "weu1"       // used in the resource group name
}

# Imported resources
keyvault_name          = "iac-kv-pre"
keyvault_unique_string = "001"