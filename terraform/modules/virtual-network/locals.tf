# --- azure/modules/virtual-network/locals.tf ---

locals {
  resource_name_prefix = "${var.owner}-onpk"

  system_subnet_cidr = cidrsubnet(var.address_space, 8, 0)
  user_subnet_cidr = cidrsubnet(var.address_space, 8, 1)
}
