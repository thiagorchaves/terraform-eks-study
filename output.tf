output "subnet_pub_1a" {
    value = module.eks_network.subnet_pub_1a
}
output "subnet_pub_1b" {
    value = module.eks_network.subnet_pub_1b
}
output "subnet_priv_1a" {
    value = module.eks_network.subnet_priv_1a
}
output "subnet_priv_1b" {
    value = module.eks_network.subnet_priv_1a
}
output "eks_vpc_config" {
    value = module.eks_cluster.eks_vpc_config
}

output "oidc_url" {
    value = module.eks_cluster.oidc
}

output "ca" {
    value = module.eks_cluster.certificate_authority
}

output "endpoint" {
    value = module.eks_cluster.endpoint
}