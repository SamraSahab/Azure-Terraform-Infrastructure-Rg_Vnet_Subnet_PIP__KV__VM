variable "public_ips" {
  description = "A map of public IP configurations."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = optional(string, "Static")
    sku                 = optional(string, "Standard")
    tags                = optional(map(string), {})
  }))
}
