output "vm_ids" {
  description = "Map of VM keys to their resource IDs."
  value       = { for k, v in azurerm_linux_virtual_machine.this : k => v.id }
}

output "vm_names" {
  description = "Map of VM keys to their names."
  value       = { for k, v in azurerm_linux_virtual_machine.this : k => v.name }
}

output "private_ip_addresses" {
  description = "Map of VM keys to their private IP addresses."
  value       = { for k, v in azurerm_network_interface.this : k => v.private_ip_address }
}

output "nic_ids" {
  description = "Map of NIC keys to their resource IDs."
  value       = { for k, v in azurerm_network_interface.this : k => v.id }
}
