variable "project_name" {
  type = string
  default = "Project Name to be used to name the resources (Name Tag)"
}

variable "tags" {
  type = map
  description = "Tags to be added to AWS resources"
}

variable "oidc_url" {
  type = string
  description = "HTTPS URL from OIDC provider of the EKS cluster"
}

variable "cluster_name" {
  type = string
  description = "EKS cluster name"
}
