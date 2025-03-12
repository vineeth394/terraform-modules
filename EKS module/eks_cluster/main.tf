resource "aws_eks_cluster" "vineeth-cluster" {
    name = var.cluster_name
    role_arn = "arn:aws:iam::794038239470:role/eks_cluster"

    vpc_config {
      subnet_ids = var.subnet_ids
    }

    }

output "cluster_name" {
  value = aws_eks_cluster.vineeth-cluster.name
}
  
data "aws_iam_role" "pull_role" {
    name = "eks_cluster"
  }

# output "role_arn" {
#   value = "data.aws_iam_role.pull_role.arn"
# }