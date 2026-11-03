variable "key_vaults" {
  description = "A map of Azure Key Vault configurations."
  type = map(object({
    name                       = string
    location                   = string
    resource_group_name        = string
    sku_name                   = optional(string, "standard")
    soft_delete_retention_days = optional(number, 7)
    purge_protection_enabled   = optional(bool, false)
    tags                       = optional(map(string), {})
  }))
}

variable "key_vault_secrets" {
  description = "A map of secrets to store in Key Vault."
  type = map(object({
    key_vault_key = string
    secret_name   = string
    secret_value  = string
  }))
  sensitive = true
  default   = {}
}
