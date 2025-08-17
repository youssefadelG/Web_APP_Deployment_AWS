variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_count" {
  description = "Number of public subnets to create"
  type        = number
  default     = 2
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "aws_region" {
  description = "The AWS region where the VPC will be created"
  type        = string
}