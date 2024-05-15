variable "project_name" {
  type = string
  default = "Project Name to be used to name the resources (Name Tag)"
}

variable "tags" {
  type = map
  description = "Tags to be added to AWS resources"
}

variable "public_subnet_1a" {
  type = string
  description = "Subnet to create EKS cluster"
}

variable "public_subnet_1b" {
  type = string
  description = "Subnet to create EKS cluster"
}