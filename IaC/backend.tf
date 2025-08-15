terraform {
  backend "s3" {
    bucket = "s3-tfstate-590184052750"
    key    = "web-app-deployment/terraform.tfstate"
    region = "us-east-1"
  }
}