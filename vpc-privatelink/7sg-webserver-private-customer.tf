# Security Group for web-server private instance allowing only from NW LB
resource "aws_security_group" "webserver-sg-private-only-from-NWLB" {
  #provider = aws.mumbai
  name   = "webserver-sg-private-only-from NWLB"
  vpc_id = aws_vpc.customer-vpc.id
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.200.0.0/16"]

  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "webserver-sg-private-only-from NWLB"

  }

}
