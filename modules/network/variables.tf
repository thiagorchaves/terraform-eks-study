variable "cidr_block" {
  type = string
  description = "Network CIDR block to be used for the VPC"
}
variable "project_name" {
  type = string
  default = "Project Name to be used to name the resources (Name Tag)"
}
variable "tags" {
  type = map
  description = "Tags to be added to AWS resources"
}