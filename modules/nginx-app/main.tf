# Primero define completamente el deployment
resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "nginx-deployment"
    labels = {
      app = "nginx"
    }
  }
  spec {
    replicas = var.replicas
    selector {
      match_labels = {
        app = "nginx"
      }
    }
    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }
      spec {
        container {
          name  = "nginx"
          image = "nginx:latest"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}

# Luego define el servicio haciendo referencia al deployment
resource "kubernetes_service" "nginx" {
  metadata {
    name = "nginx-service"
    labels = {
      app = "nginx"
    }
  }
  spec {
    selector = {
      app = "nginx"  # Simplificado para evitar referencias circulares
    }
    port {
      port        = 80
      target_port = 80
    }
    type = "LoadBalancer"
  }
}