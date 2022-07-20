# module "c100-database" {
#   source             = "git@github.com:hmcts/cnp-module-postgres?ref=pet-disable-dns-setting"
#   product            = var.product
#   component          = ""
#   location           = var.location
#   env                = var.env
#   postgresql_user    = var.db_postgresql_user
#   database_name      = var.product
#   postgresql_version = var.db_version
#   common_tags        = var.common_tags
#   subscription       = var.subscription
#   storage_mb         = var.db_storage_mb
#   business_area      = "SDS"
#   key_vault_rg       = "genesis-rg"
#   key_vault_name     = "dtssharedservices${var.env}kv"
#   subnet_id          = data.azurerm_subnet.postgres.id
# }

# data "azurerm_subnet" "postgres" {
#   name                 = "iaas"
#   resource_group_name  = "ss-${var.env}-network-rg"
#   virtual_network_name = "ss-${var.env}-vnet"
# }
