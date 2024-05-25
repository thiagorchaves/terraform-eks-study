# terraform-eks-study
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.45.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.13.2 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.29.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_eks_lb_controller"></a> [aws\_eks\_lb\_controller](#module\_aws\_eks\_lb\_controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_managed_node_group"></a> [eks\_managed\_node\_group](#module\_eks\_managed\_node\_group) | ./modules/managed-node-group | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Network CIDR block to be used for the VPC | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | `"Project Name to be used to name the resources (Name Tag)"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"AWS region to create the resources"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `string` | `"A map of tags to add to all AWS resources"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ca"></a> [ca](#output\_ca) | n/a |
| <a name="output_eks_vpc_config"></a> [eks\_vpc\_config](#output\_eks\_vpc\_config) | n/a |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
| <a name="output_oidc_url"></a> [oidc\_url](#output\_oidc\_url) | n/a |
| <a name="output_subnet_priv_1a"></a> [subnet\_priv\_1a](#output\_subnet\_priv\_1a) | n/a |
| <a name="output_subnet_priv_1b"></a> [subnet\_priv\_1b](#output\_subnet\_priv\_1b) | n/a |
| <a name="output_subnet_pub_1a"></a> [subnet\_pub\_1a](#output\_subnet\_pub\_1a) | n/a |
| <a name="output_subnet_pub_1b"></a> [subnet\_pub\_1b](#output\_subnet\_pub\_1b) | n/a |
<!-- END_TF_DOCS -->