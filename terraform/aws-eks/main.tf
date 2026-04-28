provider "aws" {
  region = "us-east-1"
}

resource "aws_eks_cluster" "devops_cluster" {
  name     = "devops-cluster"
  role_arn = "arn:aws:iam::123456789012:role/eks-cluster-role"

  vpc_config {
    subnet_ids = ["subnet-12345", "subnet-67890"]
  }
}