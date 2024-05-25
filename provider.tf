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
    helm = {
      source = "hashicorp/helm"
      version = "2.13.2"
    }

  }
  backend "s3" {

    bucket = "terraform-study-comunidadedevops"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}

provider "kubernetes" {
  host                   = module.eks_cluster.endpoint
  cluster_ca_certificate = base64decode(module.eks_cluster.certificate_authority)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", module.eks_cluster.cluster_name]
    command     = "aws"
  }
}

provider "helm" {
  kubernetes {
    host                   = module.eks_cluster.endpoint
    cluster_ca_certificate = base64decode(module.eks_cluster.certificate_authority)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", module.eks_cluster.cluster_name]
      command     = "aws"
    }
  }
}