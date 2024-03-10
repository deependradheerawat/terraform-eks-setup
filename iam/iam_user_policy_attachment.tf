resource "aws_iam_user_policy_attachment" "tfer--fortune_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "fortune"
}

resource "aws_iam_user_policy_attachment" "tfer--fortune_AmazonEBSCSIDriverPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
  user       = "fortune"
}

resource "aws_iam_user_policy_attachment" "tfer--wego_AmazonEC2ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
  user       = "wego"
}

resource "aws_iam_user_policy_attachment" "tfer--wego_AmazonVPCReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCReadOnlyAccess"
  user       = "wego"
}

resource "aws_iam_user_policy_attachment" "tfer--wego_IAMReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
  user       = "wego"
}

resource "aws_iam_user_policy_attachment" "tfer--wego_PowerUserAccess" {
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
  user       = "wego"
}
