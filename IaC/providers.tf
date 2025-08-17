terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # using the AWS provider version which was released a month ago for stability
      version = "~> 6.4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}