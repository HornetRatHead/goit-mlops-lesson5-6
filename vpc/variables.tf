variable "vpc_name" {
  description = "Name of the VPC and prefix for cluster tags"
  type        = string
  default     = "mlops-vpc"
}

variable "vpc_cidr" {
  description = "The overall network range for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability Zones in the region"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}

variable "private_subnets" {
  description = "Subnets for Kubernetes worker nodes (no public IP)"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets" {
  description = "Subnets for Load Balancers and NAT Gateway"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}
