terraform {
  required_version = ">= 1.8.1"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.45.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.29.0"
    }
  }
  backend "s3" {

    bucket = "terraform-study-comunidadedevops"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    profile = "terraform-study"
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "terraform-study"
}