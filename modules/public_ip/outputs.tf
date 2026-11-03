output "public_ip_ids" {
  description = "Map of public IP keys to their IDs."
  value       = { for k, v in azurerm_public_ip.this : k => v.id }
}

output "public_ip_addresses" {
  description = "Map of public IP keys to their IP addresses."
  value       = { for k, v in azurerm_public_ip.this : k => v.ip_address }
}

output "public_ip_names" {
  description = "Map of public IP keys to their names."
  value       = { for k, v in azurerm_public_ip.this : k => v.name }
}
