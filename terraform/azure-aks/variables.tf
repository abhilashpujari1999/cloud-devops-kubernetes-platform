variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
  default     = "devops-rg"
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
  default     = "devops-aks-cluster"
}