output "cluster_name" {
  description = "EKS Cluster Name"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "EKS Cluster API Endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the cluster"
  value       = module.eks.cluster_security_group_id
}

output "cluster_iam_role_name" {
  description = "IAM role used by EKS cluster"
  value       = module.eks.cluster_iam_role_name
}

output "node_group_arns" {
  description = "ARNs of node groups"
  value       = module.eks.eks_managed_node_groups
}
