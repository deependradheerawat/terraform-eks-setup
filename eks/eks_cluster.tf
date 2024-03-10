resource "aws_eks_cluster" "tfer--fortune-eks" {
  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "10.100.0.0/16"
  }

  name     = "fortune-eks"
  role_arn = "arn:aws:iam::873550445328:role/eksClusterRole"
  version  = "1.29"

  vpc_config {
    endpoint_private_access = "true"
    endpoint_public_access  = "true"
    public_access_cidrs     = ["0.0.0.0/0"]
    security_group_ids      = ["sg-01a43e88282f5c264"]
    subnet_ids              = ["subnet-04550e6d9795d9d09", "subnet-055313d175a9bfdfb"]
  }
}
