terraform {
  backend "s3" {
    bucket = "s3-tfstate-654654373570"
    key    = "web-app-deployment/terraform.tfstate"
    region = "us-east-1"
  }
}