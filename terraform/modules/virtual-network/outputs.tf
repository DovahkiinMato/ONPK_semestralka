# --- azure/modules/virtual-network/outputs.tf ---

output "subnet_id_system" {
  value = azurerm_subnet.system.id
}
output "subnet_id_user" {
  value = azurerm_subnet.user.id
}
