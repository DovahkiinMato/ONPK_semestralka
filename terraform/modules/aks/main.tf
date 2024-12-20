resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${local.resource_name_prefix}-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "aks1"

  default_node_pool {
    name                   = "default"
    node_count             = 1
    vm_size                = "standard_b2als_v2"
    node_public_ip_enabled = true
    vnet_subnet_id         = var.subnet_id_system
  }

  network_profile {
    network_plugin     = "azure"
    service_cidr       = "10.2.0.0/16"
    dns_service_ip     = "10.2.0.10"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
  http_application_routing_enabled = true
}


resource "azurerm_kubernetes_cluster_node_pool" "worker" {
  name = "aksnodepool"

  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = "standard_b2als_v2"
  node_count            = 1
  auto_scaling_enabled  = false
  mode                  = "User" # Worker node pool
  vnet_subnet_id        = var.subnet_id_user
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.aks.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw

  sensitive = true
}
