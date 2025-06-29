provider "azurerm" {
  features {}
  subscription_id = "82bb4603-8b7c-45c6-95ab-43635abdfe89"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-aks-demo"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-demo-cluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "aksdemocluster"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Demo"
  }
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}
