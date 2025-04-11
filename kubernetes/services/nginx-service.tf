resource "kubernetes_service" "nginx_service" {
  metadata {
    name      = "nginx-service"
    namespace = var.kubernetes_namespace
  }
  spec {
    selector = {
      app = "nginx"
    }
    type = "LoadBalancer"
    port {
      port        = 80
      target_port = 80
    }
  }
}