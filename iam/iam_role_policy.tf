resource "aws_iam_role_policy" "tfer--loadbalancer-controller-role_full-access" {
  name = "full-access"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:*",
        "ec2:*",
        "cognito-idp:*",
        "elasticloadbalancing:*",
        "acm:*"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "loadbalancer-controller-role"
}
