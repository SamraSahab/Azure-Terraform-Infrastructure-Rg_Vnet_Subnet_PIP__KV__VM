output "resource_group_ids" {
  description = "Map of resource group names to their IDs."
  value       = { for k, v in azurerm_resource_group.this : k => v.id }
}

output "resource_group_names" {
  description = "Map of resource group keys to their names."
  value       = { for k, v in azurerm_resource_group.this : k => v.name }
}

output "resource_group_locations" {
  description = "Map of resource group keys to their locations."
  value       = { for k, v in azurerm_resource_group.this : k => v.location }
}
