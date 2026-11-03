# ─────────────────────────────────────────────
# Resource Group Outputs
# ─────────────────────────────────────────────
output "resource_group_ids" {
  description = "Resource group resource IDs."
  value       = module.resource_group.resource_group_ids
}

# ─────────────────────────────────────────────
# Virtual Network Outputs
# ─────────────────────────────────────────────
output "vnet_ids" {
  description = "Virtual network resource IDs."
  value       = module.virtual_network.vnet_ids
}

# ─────────────────────────────────────────────
# Subnet Outputs
# ─────────────────────────────────────────────
output "subnet_ids" {
  description = "Subnet resource IDs."
  value       = module.subnet.subnet_ids
}

# ─────────────────────────────────────────────
# Public IP Outputs
# ─────────────────────────────────────────────
output "public_ip_addresses" {
  description = "Allocated public IP addresses."
  value       = module.public_ip.public_ip_addresses
}

# ─────────────────────────────────────────────
# Key Vault Outputs
# ─────────────────────────────────────────────
output "key_vault_uris" {
  description = "Key Vault URIs."
  value       = module.key_vault.key_vault_uris
}

output "key_vault_ids" {
  description = "Key Vault resource IDs."
  value       = module.key_vault.key_vault_ids
}

# ─────────────────────────────────────────────
# Virtual Machine Outputs
# ─────────────────────────────────────────────
output "vm_ids" {
  description = "Virtual machine resource IDs."
  value       = module.virtual_machine.vm_ids
}

output "vm_private_ips" {
  description = "Virtual machine private IP addresses."
  value       = module.virtual_machine.private_ip_addresses
}
