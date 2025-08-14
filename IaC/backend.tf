terraform {
  backend "s3" {
    bucket = "s3-tfstate-730335400401"
    key    = "web-app-deployment/terraform.tfstate"
    region = "us-east-1"
  }
}