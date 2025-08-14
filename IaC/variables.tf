variable "aws_region" {
  description = "The AWS region to deploy the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_count" {
  description = "Number of public subnets to create"
  type        = number
  default     = 2
}

variable "eks_cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "app_eks"
}

variable "eks_cluster_role_name" {
  description = "The name of the IAM role for the EKS cluster"
  type        = string
  default     = "eks-cluster-role"
}

variable "eks_node_group_name" {
  description = "The name of the EKS node group"
  type        = string
  default     = "app-eks-node-group"
}

variable "eks_node_group_role_name" {
  description = "The name of the IAM role for the EKS node group"
  type        = string
  default     = "eks-node-group-role"
  
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
