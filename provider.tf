provider "azurerm" {
  features {}
  subscription_id = "1baf5470-1c3e-40d3-a6f7-74bfbce4b348"
}

provider "launchdarkly" {
  access_token = data.azurerm_key_vault_secret.launchdarkly-access.value
}

terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.63.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.40.0"
    }
    launchdarkly = {
      source  = "launchdarkly/launchdarkly"
      version = "2.12.0"
    }
  }
}
