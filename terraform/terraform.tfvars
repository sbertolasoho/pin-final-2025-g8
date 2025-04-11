region = "us-east-1"
environment = "uat"
app_name = "pin-final"

# VPC variables
vpc_name           = "vpc-principal"
cidr               = "10.0.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
public_subnets     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
private_subnets    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
enable_nat_gateway = true
single_nat_gateway = true
enable_dns_hostnames = true

# EKS Cluster variables
cluster_name                      = "eks-cluster"
cluster_endpoint_private_access   = true
cluster_endpoint_public_access    = true
grafana_user                      = "mundose"
grafana_password                  = "12345678"