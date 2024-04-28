resource "aws_sqs_queue" "vpc-endpoint-interface-demo" {
  name                    = "vpc-endpoint-interface-demo"
  sqs_managed_sse_enabled = true

  visibility_timeout_seconds = 30
  max_message_size           = 262144
  message_retention_seconds  = 60
  receive_wait_time_seconds  = 10
  # Defining access policy as basic 
  policy = jsonencode({
    "Version": "2012-10-17",
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Sid": "__owner_statement",
      "Effect": "Allow",
      "Principal": {
        "AWS": "450115505545"
      },
      "Action": [
        "SQS:*"
      ],
      "Resource": "arn:aws:sqs:ap-south-1:450115505545:vpc-interface-endpoint-demo"
    }
  ]

  })


  tags = {
    Environment = "endpoint-interface-demo"
  }
}