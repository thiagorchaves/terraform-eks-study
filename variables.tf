variable "cidr_block" {
  type = string
  description = "Network CIDR block to be used for the VPC"
}
variable "project_name" {
  type = string
  default = "Project Name to be used to name the resources (Name Tag)"
}
variable "region" {
  type = string
  default = "AWS region to create the resources"
}
variable "tags" {
  type = string
  default = "A map of tags to add to all AWS resources"
}