resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEKSNodegroup_AWSServiceRoleForAmazonEKSNodegroup" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"
  role       = "AWSServiceRoleForAmazonEKSNodegroup"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEKS_AmazonEKSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonEKS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_DynamoDBTable_AWSApplicationAutoscalingDynamoDBTablePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingDynamoDBTablePolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_DynamoDBTable"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAutoScaling_AutoScalingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"
  role       = "AWSServiceRoleForAutoScaling"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForElasticLoadBalancing_AWSElasticLoadBalancingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
  role       = "AWSServiceRoleForElasticLoadBalancing"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--Policy-makers-role_AWSSupportAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSupportAccess"
  role       = "Policy-makers-role"
}

resource "aws_iam_role_policy_attachment" "tfer--Policy-makers-role_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "Policy-makers-role"
}

resource "aws_iam_role_policy_attachment" "tfer--Policy-makers-role_AmazonRoute53FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53FullAccess"
  role       = "Policy-makers-role"
}

resource "aws_iam_role_policy_attachment" "tfer--Policy-makers-role_IAMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
  role       = "Policy-makers-role"
}

resource "aws_iam_role_policy_attachment" "tfer--daxtodyanamodb_DAXFullAccess-daxtodyanamodb" {
  policy_arn = "arn:aws:iam::873550445328:policy/service-role/DAXFullAccess-daxtodyanamodb"
  role       = "daxtodyanamodb"
}

resource "aws_iam_role_policy_attachment" "tfer--eksClusterRole_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "eksClusterRole"
}

resource "aws_iam_role_policy_attachment" "tfer--loadbalancer-controller-role_AmazonEBSCSIDriverPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
  role       = "loadbalancer-controller-role"
}

resource "aws_iam_role_policy_attachment" "tfer--loadbalancer-controller-role_loadbalancer-controller-policy" {
  policy_arn = "arn:aws:iam::873550445328:policy/loadbalancer-controller-policy"
  role       = "loadbalancer-controller-role"
}
