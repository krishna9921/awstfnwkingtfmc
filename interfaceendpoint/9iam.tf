# Creating IAM Role and attaching the policy S3READ ACCESS 
#and then creating instance profile  

resource "aws_iam_role" "s3read_role" {
  name = "s3read_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "s3readattachment" {
  role       = aws_iam_role.s3read_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
# Attaching SQS full access policy to the existing role

resource "aws_iam_role_policy_attachment" "sqsfullaccess" {
  role       = aws_iam_role.s3read_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
}

resource "aws_iam_instance_profile" "s3read-instance-profile" {
  name = "s3read-instance-profile"
  role = aws_iam_role.s3read_role.name
}