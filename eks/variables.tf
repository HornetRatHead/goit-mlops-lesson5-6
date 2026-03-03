variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "mlops-eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.34"
}

variable "vpc_id" {
  description = "VPC ID where the cluster will be deployed"
  type        = string
}

variable "private_subnets" {
  description = "List of private subnets for worker nodes"
  type        = list(string)
}
