output "grafana_release" {
  description = "Release de Grafana desplegada dentro del stack"
  value       = helm_release.kube_prometheus_stack.name
}
