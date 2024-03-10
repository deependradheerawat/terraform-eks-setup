resource "aws_iam_group_policy_attachment" "tfer--identity-policymakers_AWSOrganizationsFullAccess" {
  group      = "identity-policymakers"
  policy_arn = "arn:aws:iam::aws:policy/AWSOrganizationsFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--identity-policymakers_AWSSupportAccess" {
  group      = "identity-policymakers"
  policy_arn = "arn:aws:iam::aws:policy/AWSSupportAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--identity-policymakers_Billing" {
  group      = "identity-policymakers"
  policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"
}

resource "aws_iam_group_policy_attachment" "tfer--identity-policymakers_IAMFullAccess" {
  group      = "identity-policymakers"
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--identity-policymakers_PowerUserAccess" {
  group      = "identity-policymakers"
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
}
