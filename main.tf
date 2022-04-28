terraform {
  required_version = "1.1.2"

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.product}-${var.env}"
  location = var.location
  tags     = var.common_tags
}
#PET subnet for privateendpoint
provider "azurerm" {
  subscription_id = "867a878b-cb68-4de5-9741-361ac9e178b6"
  alias           = "sds-dev"
  features {}
}