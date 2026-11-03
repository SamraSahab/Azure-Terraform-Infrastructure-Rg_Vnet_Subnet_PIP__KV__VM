variable "virtual_machines" {
  description = "A map of Linux virtual machine configurations."
  type = map(object({
    name                         = string
    resource_group_name          = string
    location                     = string
    size                         = string
    admin_username               = string
    subnet_name                  = string
    virtual_network_name         = string
    public_ip_name               = string
    key_vault_name               = string
    admin_password_secret_name   = string
    tags                         = optional(map(string), {})
  }))
}
