output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.eks_vpc.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.eks_vpc.cidr_block
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

# Subnet Outputs
output "eks_subnet_ids" {
  description = "IDs of the EKS subnets"
  value       = aws_subnet.eks_subnet[*].id
}

output "eks_subnet_cidr_blocks" {
  description = "CIDR blocks of the EKS subnets"
  value       = aws_subnet.eks_subnet[*].cidr_block
}

output "eks_subnet_azs" {
  description = "Availability zones of the EKS subnets"
  value       = aws_subnet.eks_subnet[*].availability_zone
}