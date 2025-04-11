provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "grafana" {
  name       = "grafana"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "grafana"
  namespace  = var.kubernetes_namespace
  timeout    = 1200

  set {
    name  = "persistence.enabled"
    value = "false"
  }
  set {
    name  = "service.type"
    value = "LoadBalancer"
  }
  set {
    name  = "adminUser"
    value = var.grafana_user
  }
  set {
    name  = "adminPassword"
    value = var.grafana_password
  }
  set {
    name  = "resources.limits.cpu"
    value = "300m"
  }
  set {
    name  = "resources.limits.memory"
    value = "256Mi"
  }
  set {
    name  = "tolerations[0].key"
    value = "node.kubernetes.io/not-ready"
  }
  set {
    name  = "tolerations[0].operator"
    value = "Exists"
  }
  set {
    name  = "tolerations[0].effect"
    value = "NoExecute"
  }
}