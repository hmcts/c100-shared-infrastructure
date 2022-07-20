terraform {
  required_version = "1.1.2"

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}
