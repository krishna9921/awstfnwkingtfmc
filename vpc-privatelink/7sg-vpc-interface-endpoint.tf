# Security Group inbound for VPC Interface endpoint via ENI from private instance.


resource "aws_security_group" "mumbai-sg-vpcinterface-ep-sqs" {
  #provider = aws.mumbai
  name   = "mumbai-sg-vpcinterface-ep-sqs"
  vpc_id = aws_vpc.mumbai-vpc.id
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.100.0.0/16"]

  }
    ingress {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["10.100.0.0/16"]

    }
  #   ingress {
  #     from_port   = -1
  #     to_port     = -1
  #     protocol    = "icmp"
  #     cidr_blocks = ["10.100.0.0/24"]

  #   }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "mumbai-sg-vpcinterface-ep-sqs"

  }

}
