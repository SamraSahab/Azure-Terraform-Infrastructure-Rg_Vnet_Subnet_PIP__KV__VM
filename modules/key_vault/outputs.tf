output "key_vault_ids" {
  description = "Map of Key Vault keys to their resource IDs."
  value       = { for k, v in azurerm_key_vault.this : k => v.id }
}

output "key_vault_uris" {
  description = "Map of Key Vault keys to their vault URIs."
  value       = { for k, v in azurerm_key_vault.this : k => v.vault_uri }
}

output "key_vault_names" {
  description = "Map of Key Vault keys to their names."
  value       = { for k, v in azurerm_key_vault.this : k => v.name }
}

output "secret_ids" {
  description = "Map of secret keys to their Key Vault secret IDs."
  value       = { for k, v in azurerm_key_vault_secret.vm_admin_password : k => v.id }
  sensitive   = true
}
