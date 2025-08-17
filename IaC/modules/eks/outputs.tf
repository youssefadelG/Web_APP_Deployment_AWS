
# EKS Cluster Outputs
output "cluster_id" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.app_eks.id
}

output "cluster_arn" {
  description = "The Amazon Resource Name (ARN) of the cluster"
  value       = aws_eks_cluster.app_eks.arn
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = aws_eks_cluster.app_eks.endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = aws_eks_cluster.app_eks.vpc_config[0].cluster_security_group_id
}

output "cluster_version" {
  description = "The Kubernetes version for the cluster"
  value       = aws_eks_cluster.app_eks.version
}

# EKS Node Group Outputs
output "node_group_arn" {
  description = "Amazon Resource Name (ARN) of the EKS Node Group"
  value       = aws_eks_node_group.app_eks_node_group.arn
}

output "node_group_status" {
  description = "Status of the EKS Node Group"
  value       = aws_eks_node_group.app_eks_node_group.status
}

output "node_group_capacity_type" {
  description = "Type of capacity associated with the EKS Node Group"
  value       = aws_eks_node_group.app_eks_node_group.capacity_type
}

# IAM Role Outputs
output "cluster_iam_role_name" {
  description = "IAM role name associated with EKS cluster"
  value       = aws_iam_role.eks_cluster_role.name
}

output "cluster_iam_role_arn" {
  description = "IAM role ARN associated with EKS cluster"
  value       = aws_iam_role.eks_cluster_role.arn
}

output "node_group_iam_role_name" {
  description = "IAM role name associated with EKS node group"
  value       = aws_iam_role.eks_node_group_role.name
}

output "node_group_iam_role_arn" {
  description = "IAM role ARN associated with EKS node group"
  value       = aws_iam_role.eks_node_group_role.arn
}

output "configure_kubectl" {
  description = "Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = "aws eks --region ${var.aws_region} update-kubeconfig --name ${aws_eks_cluster.app_eks.id}"
}
