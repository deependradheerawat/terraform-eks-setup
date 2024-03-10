resource "aws_security_group" "tfer--default_sg-01a43e88282f5c264" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "true"
    to_port     = "0"
  }

  name   = "default"
  vpc_id = "vpc-0d698fd1e5c4d0f9b"
}

resource "aws_security_group" "tfer--eks-cluster-sg-fortune-eks-1175221505_sg-0fb7e717fe0c682de" {
  description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "0"
    protocol        = "-1"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--k8s-elb-a188df5a365184d6bba8a611a38d9db0_sg-0ecb631e4a5867a14_id}"]
    self            = "true"
    to_port         = "0"
  }

  name = "eks-cluster-sg-fortune-eks-1175221505"

  tags = {
    Name                                = "eks-cluster-sg-fortune-eks-1175221505"
    "kubernetes.io/cluster/fortune-eks" = "owned"
  }

  tags_all = {
    Name                                = "eks-cluster-sg-fortune-eks-1175221505"
    "kubernetes.io/cluster/fortune-eks" = "owned"
  }

  vpc_id = "vpc-0d698fd1e5c4d0f9b"
}

resource "aws_security_group" "tfer--eks-remoteAccess-6ec714a1-070e-c862-0067-1d265a57d358_sg-0114721e832a8b5e1" {
  description = "Security group for all nodes in the nodeGroup to allow SSH access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "22"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--default_sg-01a43e88282f5c264_id}"]
    self            = "false"
    to_port         = "22"
  }

  name = "eks-remoteAccess-6ec714a1-070e-c862-0067-1d265a57d358"

  tags = {
    eks                  = "node-group-1"
    "eks:nodegroup-name" = "node-group-1"
  }

  tags_all = {
    eks                  = "node-group-1"
    "eks:nodegroup-name" = "node-group-1"
  }

  vpc_id = "vpc-0d698fd1e5c4d0f9b"
}

resource "aws_security_group" "tfer--k8s-elb-a188df5a365184d6bba8a611a38d9db0_sg-0ecb631e4a5867a14" {
  description = "Security group for Kubernetes ELB a188df5a365184d6bba8a611a38d9db0 (fortune/fortune)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3"
    protocol    = "icmp"
    self        = "false"
    to_port     = "4"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name        = "k8s-elb-a188df5a365184d6bba8a611a38d9db0"
  name_prefix = "k8s-elb-a188df"

  tags = {
    "kubernetes.io/cluster/fortune-eks" = "owned"
  }

  tags_all = {
    "kubernetes.io/cluster/fortune-eks" = "owned"
  }

  vpc_id = "vpc-0d698fd1e5c4d0f9b"
}
