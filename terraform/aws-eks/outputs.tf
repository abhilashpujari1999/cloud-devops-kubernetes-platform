output "cluster_name" {
  value = aws_eks_cluster.devops_cluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.devops_cluster.endpoint
}