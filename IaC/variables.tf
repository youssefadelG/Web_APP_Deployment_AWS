variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "eks_cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "app_eks"
}

variable "environment" {
  description = "The environment to deploy resources"
  type        = string
  default     = "dev"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "node_instance_types" {
  description = "List of instance types for the EKS node group"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "eks_cluster_version" {
  description = "The Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.31"
}
