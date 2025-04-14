resource "kubernetes_manifest" "nginx_service_monitor" {
  manifest = {
    apiVersion = "monitoring.coreos.com/v1"
    kind       = "ServiceMonitor"
    metadata = {
      name      = "nginx-monitor"
      namespace = "monitoring"
      labels = {
        release = "kube-prometheus-stack"
      }
    }
    spec = {
      selector = {
        matchLabels = {
          app = "nginx"
        }
      }
      endpoints = [
        {
          port     = "http"
          interval = "15s"
          path     = "/metrics"
        }
      ]
    }
  }

    depends_on = [
    helm_release.kube_prometheus_stack,
    null_resource.wait_for_crds
    ]
}