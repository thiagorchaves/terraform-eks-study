variable "project_name" {
  type = string
  default = "Project Name to be used to name the resources (Name Tag)"
}

variable "tags" {
  type = map
  description = "Tags to be added to AWS resources"
}

variable "cluster_name" {
  type = string
  description = "EKS cluster name to create mng"
}

variable "subnet_private_1a" {
  type = string
  description = "Subnet id from AZ 1a"
}

variable "subnet_private_1b" {
  type = string
  description = "Subnet id from AZ 1b"
}