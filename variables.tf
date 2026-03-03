variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "goit-mlops"
}

variable "region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "eu-central-1"
}
