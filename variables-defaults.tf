# Variables with default values or values specified in an {env}.tfvars file

variable "location" {
  default = "UK South"
}

variable "common_tags" {
  type = map(string)
}

# Keyvault

variable "product_group_name" {
  default = "dcd_group_pet_v2"
}
