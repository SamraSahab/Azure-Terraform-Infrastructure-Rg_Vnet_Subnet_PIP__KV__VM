# Fetch subnet details for NIC attachment
data "azurerm_subnet" "this" {
  for_each             = var.virtual_machines
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

# Fetch public IP details
data "azurerm_public_ip" "this" {
  for_each            = var.virtual_machines
  name                = each.value.public_ip_name
  resource_group_name = each.value.resource_group_name
}

# Retrieve admin password from Key Vault
data "azurerm_key_vault" "this" {
  for_each            = var.virtual_machines
  name                = each.value.key_vault_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault_secret" "admin_password" {
  for_each     = var.virtual_machines
  name         = each.value.admin_password_secret_name
  key_vault_id = data.azurerm_key_vault.this[each.key].id
}

# Network Interface
resource "azurerm_network_interface" "this" {
  for_each            = var.virtual_machines
  name                = "${each.value.name}-nic"
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.this[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.this[each.key].id
  }

  tags = each.value.tags
}

# Linux Virtual Machine
resource "azurerm_linux_virtual_machine" "this" {
  for_each                        = var.virtual_machines
  name                            = each.value.name
  resource_group_name             = each.value.resource_group_name
  location                        = each.value.location
  size                            = each.value.size
  admin_username                  = each.value.admin_username
  admin_password                  = data.azurerm_key_vault_secret.admin_password[each.key].value
  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.this[each.key].id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }

  tags = each.value.tags
}
