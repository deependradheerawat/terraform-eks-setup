resource "aws_iam_instance_profile" "tfer--Policy-makers-role" {
  name = "Policy-makers-role"
  path = "/"
  role = "Policy-makers-role"
}

resource "aws_iam_instance_profile" "tfer--eks-6ec714a1-070e-c862-0067-1d265a57d358" {
  name = "eks-6ec714a1-070e-c862-0067-1d265a57d358"
  path = "/"
  role = "Policy-makers-role"
}

resource "aws_iam_instance_profile" "tfer--eks-74c714a1-a5c6-cf32-6e01-b6ec29ac0d42" {
  name = "eks-74c714a1-a5c6-cf32-6e01-b6ec29ac0d42"
  path = "/"
  role = "Policy-makers-role"
}
