resource "aws_iam_policy" "tfer--DAXFullAccess-daxtodyanamodb" {
  name = "DAXFullAccess-daxtodyanamodb"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:BatchGetItem",
        "dynamodb:GetItem",
        "dynamodb:Query",
        "dynamodb:Scan",
        "dynamodb:BatchWriteItem",
        "dynamodb:DeleteItem",
        "dynamodb:PutItem",
        "dynamodb:UpdateItem",
        "dynamodb:DescribeLimits",
        "dynamodb:DescribeTimeToLive",
        "dynamodb:DescribeTable",
        "dynamodb:ListTables"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:dynamodb:us-east-1:873550445328:table/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--loadbalancer-controller-policy" {
  name = "loadbalancer-controller-policy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "elasticloadbalancing:*",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--mypolicy" {
  name = "mypolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "iam:CreateRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::873550445328:role/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
