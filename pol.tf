provider "aws" {
  version = "2.33.0"
  region = "us-east-2"
}

resource "aws_iam_role" "My_Role" {
  name = "My_Role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

  tags = {
    tag-key = "Admin"
  }
}