
data "aws_availability_zones" "available" {
  state = "available"
  # Only get regular availability zones, exclude Local Zones and Wavelength Zones
  filter {
    name   = "zone-type"
    values = ["availability-zone"]
  }
}

resource "aws_vpc" "eks_vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "eks-vpc"
  }
}

# Adding an Internet Gateway to expose deployment to external access
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = {
    Name = "eks-igw"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "eks-public-route-table"
  }
}

# Associating eks with 2 public subnets in 2 different availability zones for High Availability
resource "aws_route_table_association" "public_subnet1" {
  subnet_id      = aws_subnet.eks_subnet[0].id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_subnet2" {
  subnet_id      = aws_subnet.eks_subnet[1].id
  route_table_id = aws_route_table.public.id
}

resource "aws_subnet" "eks_subnet" {
  count = var.public_subnet_count
  vpc_id = aws_vpc.eks_vpc.id
  cidr_block = cidrsubnet(var.vpc_cidr_block, 8, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.cluster_name}-subnet-${count.index + 1}"
  }
}
