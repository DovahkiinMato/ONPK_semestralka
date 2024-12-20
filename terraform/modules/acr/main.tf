resource "azurerm_container_registry" "main" {
  name                = "mbabic"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
}

#resource "azurerm_role_assignment" "example" {
#  principal_id                     = azurerm_kubernetes_cluster.example.kubelet_identity[0].object_id
#  role_definition_name             = "AcrPull"
#  scope                            = azurerm_container_registry.example.id
#  skip_service_principal_aad_check = true
#}
