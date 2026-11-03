output "subnet_ids" {
  description = "Map of subnet keys to their IDs."
  value       = { for k, v in azurerm_subnet.this : k => v.id }
}

output "subnet_names" {
  description = "Map of subnet keys to their names."
  value       = { for k, v in azurerm_subnet.this : k => v.name }
}
