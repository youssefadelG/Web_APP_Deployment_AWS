output "availability_zones" {
  description = "List of availability zones used"
  value       = data.aws_availability_zones.available.names
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = module.vpc.internet_gateway_id
}

output "eks_subnet_ids" {
  description = "List of EKS subnet IDs"
  value       = module.vpc.eks_subnet_ids
}

output "eks_subnet_cidr_blocks" {
  description = "List of EKS subnet CIDR blocks"
  value       = module.vpc.eks_subnet_cidr_blocks
}

output "eks_subnet_azs" {
  description = "List of EKS subnet availability zones"
  value       = module.vpc.eks_subnet_azs
}


# EKS outputs

output "cluster_id" {
  description = "ID of the EKS cluster"
  value       = module.eks.cluster_id
}

output "cluster_arn" {
  description = "ARN of the EKS cluster"
  value       = module.eks.cluster_arn
}

output "cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "ID of the security group for the EKS cluster"
  value       = module.eks.cluster_security_group_id
}

output "cluster_version" {
  description = "Kubernetes version of the EKS cluster"
  value       = module.eks.cluster_version
}

output "node_group_arn" {
  description = "ARN of the EKS Node Group"
  value       = module.eks.node_group_arn
}

output "node_group_status" {
  description = "Status of the EKS Node Group"
  value       = module.eks.node_group_status
}

output "node_group_capacity_type" {
  description = "Capacity type of the EKS Node Group"
  value       = module.eks.node_group_capacity_type
}

output "cluster_iam_role_name" {
  description = "Name of the IAM role associated with the EKS cluster"
  value       = module.eks.cluster_iam_role_name
}

output "cluster_iam_role_arn" {
  description = "ARN of the IAM role associated with the EKS cluster"
  value       = module.eks.cluster_iam_role_arn
}


output "node_group_iam_role_name" {
  description = "Name of the IAM role associated with the EKS node group"
  value       = module.eks.node_group_iam_role_name
}

output "node_group_iam_role_arn" {
  description = "ARN of the IAM role associated with the EKS node group"
  value       = module.eks.node_group_iam_role_arn
}

output "configure_kubectl" {
  description = "Command to configure kubectl for the EKS cluster"
  value = module.eks.configure_kubectl
}