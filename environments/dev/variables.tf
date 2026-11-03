# ─────────────────────────────────────────────
# Resource Group Variables
# ─────────────────────────────────────────────
variable "resource_groups" {
  description = "Map of resource groups to create."
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string), {})
  }))
}

# ─────────────────────────────────────────────
# Virtual Network Variables
# ─────────────────────────────────────────────
variable "virtual_networks" {
  description = "Map of virtual networks to create."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    tags                = optional(map(string), {})
  }))
}

# ─────────────────────────────────────────────
# Subnet Variables
# ─────────────────────────────────────────────
variable "subnets" {
  description = "Map of subnets to create."
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

# ─────────────────────────────────────────────
# Public IP Variables
# ─────────────────────────────────────────────
variable "public_ips" {
  description = "Map of public IPs to create."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = optional(string, "Static")
    sku                 = optional(string, "Standard")
    tags                = optional(map(string), {})
  }))
}

# ─────────────────────────────────────────────
# Key Vault Variables
# ─────────────────────────────────────────────
variable "key_vaults" {
  description = "Map of Key Vaults to create."
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
  description = "Map of secrets to store in Key Vault (e.g., VM admin password)."
  type = map(object({
    key_vault_key = string
    secret_name   = string
    secret_value  = string
  }))
  sensitive = true
  default   = {}
}

# ─────────────────────────────────────────────
# Virtual Machine Variables
# ─────────────────────────────────────────────
variable "virtual_machines" {
  description = "Map of Linux virtual machine configurations."
  type = map(object({
    name                       = string
    resource_group_name        = string
    location                   = string
    size                       = string
    admin_username             = string
    subnet_name                = string
    virtual_network_name       = string
    public_ip_name             = string
    key_vault_name             = string
    admin_password_secret_name = string
    tags                       = optional(map(string), {})
  }))
}
