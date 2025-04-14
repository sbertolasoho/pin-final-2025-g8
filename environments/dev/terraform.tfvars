aws_region = "us-east-1"

availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

cluster_name = "eks-demo-cluster"

aws_auth_users = [
  {
    userarn  = "arn:aws:iam::083904820942:user/sbertola" # Tu ARN
    username = "sbertola"                                # Tu nombre de usuario
    groups   = ["system:masters"]                        # Grupo con permisos de administrador
  }
]

manage_aws_auth_configmap = true
