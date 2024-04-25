resource "aws_security_group" "mumbai-sg-public" {
  provider = aws.mumbai
  name     = "mumbai-sg-public"
  vpc_id   = aws_vpc.mumbai-vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["49.205.255.131/32"]

  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["49.205.255.131/32"]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "mumbai-sg-public"

  }

}
