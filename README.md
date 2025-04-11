# MUNDO-SE-PIN-FINAL

Este proyecto está dividido en dos grandes secciones: la infraestructura de EKS (Terraform) y los despliegues de aplicación en Kubernetes.

## Infraestructura (Terraform)

La carpeta `terraform/` contiene la configuración de Terraform separada en módulos:
- **clusters/**: Incluye la definición del cluster EKS, la VPC, sus salidas y las variables necesarias.
- **providers.tf**: Configura los proveedores (AWS, Kubernetes, Random, etc.) necesarios para la infraestructura.
- **versions.tf**: Define las versiones requeridas de Terraform y sus proveedores.
- **terraform.tfvars**: Valores de las variables para desplegar la infraestructura.

## Aplicación (Kubernetes)

La carpeta `kubernetes/` organiza la configuración de Kubernetes en:
- **namespaces/**: Define los namespaces requeridos (ej. *monitoring*).
- **deployments/** y **services/**: Recursos para desplegar NGINX.
- **apps/monitoring/**: Despliegue de aplicaciones de monitoreo (Grafana y Prometheus) usando Helm.
