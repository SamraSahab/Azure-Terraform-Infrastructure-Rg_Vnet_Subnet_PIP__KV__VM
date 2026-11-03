variable "virtual_networks" {
  description = "A map of virtual network configurations."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    tags                = optional(map(string), {})
  }))
}
