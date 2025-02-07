
# Remote backend for state files

terraform {
  backend "azurerm" {
    resource_group_name  = "rg"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "storeabcd18dhr"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "cicd"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
   key                  = "prod.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
use_oidc = true
subscription_id = "d142c4c7-733e-4ee6-9bb4-bcbe829e13c2"
tenant_id = "2fa4a13a-ddfd-4c51-88ba-95b8b391d3df"
client_id = "ecb833d8-e31d-49c1-8ac2-f7523099b1ca"
  }
}
