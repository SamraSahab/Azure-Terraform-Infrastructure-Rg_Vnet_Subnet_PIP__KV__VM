output "vnet_ids" {
  description = "Map of VNet keys to their IDs."
  value       = { for k, v in azurerm_virtual_network.this : k => v.id }
}

output "vnet_names" {
  description = "Map of VNet keys to their names."
  value       = { for k, v in azurerm_virtual_network.this : k => v.name }
}
