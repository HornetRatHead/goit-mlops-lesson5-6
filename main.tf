module "vpc" {
  source = "./vpc"
  
  vpc_name = "goit-mlops-vpc"
}

module "eks" {
  source = "./eks"

  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
  cluster_name    = "mlops-eks-cluster"

  depends_on = [module.vpc]
}
