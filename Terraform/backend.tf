terraform {
  backend "azurerm" {
    resource_group_name  = "terraform"              # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "karanstorageaccount"    # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "karanstorage"           # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    use_azuread_auth     = false                    # Can also be set via `ARM_USE_AZUREAD` environment variable.
  }
}
