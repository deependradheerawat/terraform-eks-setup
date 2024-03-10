resource "aws_eks_node_group" "tfer--node-group-1" {
  ami_type        = "AL2_x86_64"
  capacity_type   = "ON_DEMAND"
  cluster_name    = "${aws_eks_cluster.tfer--fortune-eks.name}"
  disk_size       = "20"
  instance_types  = ["t2.small"]
  node_group_name = "node-group-1"
  node_role_arn   = "arn:aws:iam::873550445328:role/Policy-makers-role"
  release_version = "1.29.0-20240227"

  remote_access {
    ec2_ssh_key               = "demokey"
    source_security_group_ids = ["sg-01a43e88282f5c264"]
  }

  scaling_config {
    desired_size = "1"
    max_size     = "1"
    min_size     = "1"
  }

  subnet_ids = ["subnet-04550e6d9795d9d09", "subnet-055313d175a9bfdfb"]

  update_config {
    max_unavailable = "1"
  }

  version = "1.29"
}

resource "aws_eks_node_group" "tfer--node-group-2" {
  ami_type        = "AL2_x86_64"
  capacity_type   = "ON_DEMAND"
  cluster_name    = "${aws_eks_cluster.tfer--fortune-eks.name}"
  disk_size       = "20"
  instance_types  = ["t2.small"]
  node_group_name = "node-group-2"
  node_role_arn   = "arn:aws:iam::873550445328:role/Policy-makers-role"
  release_version = "1.29.0-20240227"

  scaling_config {
    desired_size = "1"
    max_size     = "1"
    min_size     = "1"
  }

  subnet_ids = ["subnet-04550e6d9795d9d09", "subnet-055313d175a9bfdfb"]

  update_config {
    max_unavailable = "1"
  }

  version = "1.29"
}
