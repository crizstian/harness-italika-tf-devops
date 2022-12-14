# output "cluster_id" {
#   description = "EKS cluster ID"
#   value       = module.eks.cluster_id
# }

# output "cluster_endpoint" {
#   description = "Endpoint for EKS control plane"
#   value       = module.eks.cluster_endpoint
# }

# output "cluster_security_group_id" {
#   description = "Security group ids attached to the cluster control plane"
#   value       = module.eks.cluster_security_group_id
# }

# output "region" {
#   description = "AWS region"
#   value       = var.region
# }

# output "cluster_name" {
#   description = "Kubernetes Cluster Name"
#   value       = local.cluster_name
# }

# locals {
#   secrets = {
#     harness_italika_host                   = module.eks.cluster_endpoint
#     harness_italika_cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
#     harness_italika_token                  = data.aws_eks_cluster_auth.default.token
#   }
# }

# resource "harness_platform_secret_text" "harness_secrets" {
#   for_each                  = local.secrets
#   identifier                = each.key
#   name                      = each.key
#   description               = "generated by terraform"
#   secret_manager_identifier = "harnessSecretManager"
#   value_type                = "Inline"
#   value                     = each.value

#   lifecycle {
#     ignore_changes = [
#       value,
#     ]
#   }
# }
