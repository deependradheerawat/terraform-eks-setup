resource "aws_iam_user_policy" "tfer--fortune_sts_policy" {
  name = "sts_policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "iam:GetPolicy",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy",
      "Sid": "Statement1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "fortune"
}
