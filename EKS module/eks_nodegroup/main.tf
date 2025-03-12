resource "aws_eks_node_group" "vineeth-nodegroup" {
    cluster_name = var.cluster_name
    node_group_name = var.node_groupname
    node_role_arn = "arn:aws:iam::794038239470:role/eks_nodegroup"
    subnet_ids      = var.subnet_ids
    disk_size = "20"
    scaling_config {
      desired_size = var.desired_size
      max_size = var.maxvalue
      min_size = var.minvalue
    }
    instance_types = [var.instance_type]
    ami_type       = "AL2_x86_64"
    
    #depends_on = [ aws_eks_cluster.vineeth_EKS_Cluster ]
}

data "aws_iam_role" "pull_ami1" {
  name = "eks_nodegroup"
}

# output "role_arn1" {
#   value = "data.aws_iam_role.pull_ami1.arn"
# }