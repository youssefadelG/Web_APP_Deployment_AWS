
variable "environment" {
  description = "The environment for the EKS cluster"
  type        = string
}

variable "aws_region" {
  description = "The AWS region where the EKS cluster will be created"
  type        = string
}

variable "eks_cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "eks_subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
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
}

variable "eks_cluster_version" {
  description = "The Kubernetes version for the EKS cluster"
  type        = string
}
