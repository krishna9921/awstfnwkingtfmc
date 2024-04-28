# Creating vpc gw endpoint
resource "aws_vpc_endpoint" "vpc-interface-endpoint" {
  vpc_id             = aws_vpc.mumbai-vpc.id
  service_name       = "com.amazonaws.ap-south-1.sqs"
  vpc_endpoint_type  = "Interface"
  subnet_ids         = [aws_subnet.private-subnet-mumbai.id,]
  security_group_ids = [aws_security_group.mumbai-sg-vpcinterface-ep-sqs.id,]
  # If the below option is not set to true you cannot send message to SQS inspite of all sg rules 
  private_dns_enabled = true
  tags = {
    Name = "vpc-interface-endpoint"
  }
}

# Route table is not required for Interface endpoint 