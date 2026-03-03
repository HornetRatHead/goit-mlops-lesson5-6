module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  cluster_endpoint_public_access = true

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnets

  eks_managed_node_groups = {
    cpu_node_group = {
      min_size     = 1
      max_size     = 2
      desired_size = 1

      instance_types = ["t3.micro"]
      capacity_type  = "ON_DEMAND"
    }

    ml_node_group = {
      min_size     = 1
      max_size     = 2
      desired_size = 1

      instance_types = ["t3.micro"] 
      capacity_type  = "SPOT"       
    }
  }

  manage_aws_auth_configmap = true

}
