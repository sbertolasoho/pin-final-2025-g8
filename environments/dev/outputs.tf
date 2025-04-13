output "cluster_endpoint" {
  description = "Endpoint del clúster EKS"
  value       = module.eks.cluster_endpoint
}

output "nginx_service_hostname" {
  description = "Hostname del servicio de Nginx (LoadBalancer)"
  value       = module.nginx_app.nginx_service_hostname
}

output "vpc_id" {
  description = "ID de la VPC"
  value       = module.vpc.vpc_id
}
