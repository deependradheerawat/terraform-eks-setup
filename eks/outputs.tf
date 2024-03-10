output "aws_eks_cluster_tfer--fortune-eks_id" {
  value = "${aws_eks_cluster.tfer--fortune-eks.id}"
}

output "aws_eks_node_group_tfer--node-group-1_id" {
  value = "${aws_eks_node_group.tfer--node-group-1.id}"
}

output "aws_eks_node_group_tfer--node-group-2_id" {
  value = "${aws_eks_node_group.tfer--node-group-2.id}"
}
