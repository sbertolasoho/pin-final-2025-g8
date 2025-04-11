resource "helm_release" "prometheus" {
  name       = "prometheus"
  namespace  = var.kubernetes_namespace
  repository = "https://prometheus-community.github.io/helm-charts"
  version    = "25.24.1"
  chart      = "prometheus"
  timeout    = 1200

  set {
    name  = "server.persistentVolume.enabled"
    value = "false"
  }
  set {
    name  = "server.service.type"
    value = "LoadBalancer"
  }
  set {
    name  = "server.resources.limits.cpu"
    value = "1000m"
  }
  set {
    name  = "server.resources.limits.memory"
    value = "1Gi"
  }
  set {
    name  = "alertmanager.enabled"
    value = "false"
  }
}