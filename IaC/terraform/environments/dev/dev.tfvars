# environment
resource_group_name = "digital-redeauia-rsg-weu1-dev"
environment         = "dev"

unique_string = "001"

function_storage_account_replication_type = "LRS"

# app service plan
app_sp_tier = "PremiumV2"
app_sp_size = "P1v2"
app_sp_kind = "elastic"
# sdk_app_sp_tier = "PremiumV2"
# sdk_app_sp_size = "P1v2"

# function app site_config
always_on_config                 = "true"
pre_warmed_instance_count_config = "0"


# URL function test
## function_url_zip = "https://github.com/miguelassan001/nodeazfunction/raw/master/aee24b5f720a7048565ffffa012b2bc3.zip"

# analytics
log_analytics_retention_in_days = 30
log_analytics_sku               = "pergb2018"


# Environment Location
location = {
  name = "westeurope" // region
  code = "weu1"       // used in the resource group name
}

provider "azurerm" {
  version = "=2.0.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "digital-redeauia-rsg-weu1-dev"
    storage_account_name = "iacsadev"
    container_name       = "state"
    key                  = "dev.tfstate"
  }
}

