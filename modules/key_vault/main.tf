# Retrieve current Azure client configuration (tenant_id, object_id)
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "this" {
  for_each                    = var.key_vaults
  name                        = each.value.name
  location                    = each.value.location
  resource_group_name         = each.value.resource_group_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = each.value.sku_name
  soft_delete_retention_days  = each.value.soft_delete_retention_days
  purge_protection_enabled    = each.value.purge_protection_enabled

  tags = each.value.tags
}

# Grant the deploying service principal full access to manage secrets
resource "azurerm_key_vault_access_policy" "deployer" {
  for_each     = var.key_vaults
  key_vault_id = azurerm_key_vault.this[each.key].id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = data.azurerm_client_config.current.object_id

  secret_permissions = [
    "Get", "List", "Set", "Delete", "Recover", "Backup", "Restore", "Purge"
  ]

  key_permissions = [
    "Get", "List", "Create", "Delete", "Recover", "Backup", "Restore", "Purge"
  ]
}

# Store VM admin password as a Key Vault secret
resource "azurerm_key_vault_secret" "vm_admin_password" {
  for_each     = var.key_vault_secrets
  name         = each.value.secret_name
  value        = each.value.secret_value
  key_vault_id = azurerm_key_vault.this[each.value.key_vault_key].id

  depends_on = [azurerm_key_vault_access_policy.deployer]
}
