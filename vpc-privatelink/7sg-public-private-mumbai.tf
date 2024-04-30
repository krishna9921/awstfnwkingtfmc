# Security Group for public instance allowing only from the laptop
resource "aws_security_group" "mumbai-sg-public" {
  #provider = aws.mumbai
  name     = "mumbai-sg-public"
  vpc_id   = aws_vpc.mumbai-vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["49.205.250.210/32"]

  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["49.205.250.210/32"]

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
# Security Group for private instance allowing only vpc cidr ranges
resource "aws_security_group" "mumbai-sg-private" {
  #provider = aws.mumbai
  name   = "mumbai-sg-private"
  vpc_id = aws_vpc.mumbai-vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.100.0.0/24"]

  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.100.0.0/24"]

  }
  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["10.100.0.0/24"]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "mumbai-sg-private"

  }

}
