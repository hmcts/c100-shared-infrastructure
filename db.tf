module "c100-database" {
  source             = "git@github.com:hmcts/cnp-module-postgres?ref=pet-disable-dns-setting"
  product            = var.product
  component          = ""
  location           = var.location
  env                = var.env
  postgresql_user    = var.db_postgresql_user
  database_name      = var.product
  postgresql_version = var.db_version
  common_tags        = var.common_tags
  subscription       = var.subscription
  storage_mb         = var.db_storage_mb
  business_area      = "SDS"
  key_vault_rg       = "genesis-rg"
  key_vault_name     = "dtssharedservices${var.env}kv"
}

# Add DB outputs to keyvault

resource "azurerm_key_vault_secret" "c100-postgres-user" {
  name         = "c100-postgres-user"
  value        = module.c100-database.user_name
  key_vault_id = module.c100-key-vault.key_vault_id
}

resource "azurerm_key_vault_secret" "c100-postgres-password" {
  name         = "c100-postgres-password"
  value        = module.c100-database.postgresql_password
  key_vault_id = module.c100-key-vault.key_vault_id
}

resource "azurerm_key_vault_secret" "c100-postgres-host" {
  name         = "c100-postgres-host"
  value        = module.c100-database.host_name
  key_vault_id = module.c100-key-vault.key_vault_id
}

resource "azurerm_key_vault_secret" "c100-postgres-port" {
  name         = "c100-postgres-port"
  value        = module.c100-database.postgresql_listen_port
  key_vault_id = module.c100-key-vault.key_vault_id
}

resource "azurerm_key_vault_secret" "c100-postgres-database" {
  name         = "c100-postgres-database"
  value        = module.c100-database.postgresql_database
  key_vault_id = module.c100-key-vault.key_vault_id
}
