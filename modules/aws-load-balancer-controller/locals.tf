locals {
  oidc = split("/", var.oidc_url)[4]
}