

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.17.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
  subscription_id = "d142c4c7-733e-4ee6-9bb4-bcbe829e13c2"
}
##

variable "name" {
    type = string
  
}

variable "location" {
    type = string
  
}
resource "azurerm_resource_group" "rg" {
    name = var.name
    location = var.location
  
}
# Terraform applied using Dev variables , then I applied using Prod variables, so it started to destory and recreate
# I added backend for tf state , created yml file which will be triggered on push to master and it tf applies using prod.terraform.tfvars file
#
