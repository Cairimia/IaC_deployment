# environment
resource_group_name = "IaC-Deployment-RG-dev"
environment         = "dev"

unique_string = "001"

function_storage_account_replication_type = "LRS"

# Environment Location
location = {
  name = "westeurope" // region
  code = "weu1"       // used in the resource group name
}

