variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}
 
variable "ecr_repository_name" {
  description = "Name of the ECR repository"
  default     = "flask-app-repo"
}
 
variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  default     = "flask-eks-cluster"
}
 
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
default = "10.0.0.0/16"
}
 
variable "subnet_cidrs" {
  description = "CIDR blocks for subnets"
  type        = list(string)
default = ["10.0.1.0/24", "10.0.2.0/24"]
}
 
variable "instance_type" {
  description = "Instance type for EKS worker nodes"
  default     = "t3.medium"
}
 
variable "desired_capacity" {
  description = "Desired number of worker nodes"
  default     = 2
}
 
variable "max_capacity" {
  description = "Maximum number of worker nodes"
  default     = 3
}
 
variable "min_capacity" {
  description = "Minimum number of worker nodes"
  default     = 1
}