# ─────────────────────────────────────────────
# 1. Resource Group
# ─────────────────────────────────────────────
module "resource_group" {
  source          = "../../modules/resource_group"
  resource_groups = var.resource_groups
}

# ─────────────────────────────────────────────
# 2. Virtual Network
# ─────────────────────────────────────────────
module "virtual_network" {
  source           = "../../modules/virtual_network"
  virtual_networks = var.virtual_networks
  depends_on       = [module.resource_group]
}

# ─────────────────────────────────────────────
# 3. Subnet
# ─────────────────────────────────────────────
module "subnet" {
  source     = "../../modules/subnet"
  subnets    = var.subnets
  depends_on = [module.virtual_network]
}

# ─────────────────────────────────────────────
# 4. Public IP
# ─────────────────────────────────────────────
module "public_ip" {
  source     = "../../modules/public_ip"
  public_ips = var.public_ips
  depends_on = [module.resource_group]
}

# ─────────────────────────────────────────────
# 5. Key Vault  (stores VM admin password)
# ─────────────────────────────────────────────
module "key_vault" {
  source            = "../../modules/key_vault"
  key_vaults        = var.key_vaults
  key_vault_secrets = var.key_vault_secrets
  depends_on        = [module.resource_group]
}

# ─────────────────────────────────────────────
# 6. Virtual Machine  (reads password from KV)
# ─────────────────────────────────────────────
module "virtual_machine" {
  source           = "../../modules/virtual_machine"
  virtual_machines = var.virtual_machines
  depends_on       = [module.subnet, module.public_ip, module.key_vault]
}
