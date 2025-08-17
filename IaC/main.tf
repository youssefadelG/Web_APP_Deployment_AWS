
data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  common_config = {
    cluster_name   = var.eks_cluster_name
    vpc_cidr_block = var.vpc_cidr_block
    environment    = var.environment
  }
}

module "vpc" {
  source = "./modules/vpc"
  cluster_name = local.common_config.cluster_name
  aws_region   = var.aws_region
  vpc_cidr_block = local.common_config.vpc_cidr_block
}

module "eks" {
  source = "./modules/eks"
  eks_cluster_name = local.common_config.cluster_name
  environment      = local.common_config.environment
  node_instance_types = var.node_instance_types
  eks_cluster_version = var.eks_cluster_version
  eks_subnet_ids       = module.vpc.eks_subnet_ids
  aws_region          = var.aws_region
}