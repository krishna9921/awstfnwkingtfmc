resource "aws_subnet" "subnet-1-private-virginia" {
  provider          = aws.virginia
  vpc_id            = aws_vpc.virginia-vpc.id
  cidr_block        = "10.200.11.0/24"
  availability_zone = "us-east-1a"
  #map_public_ip_on_launch  = "true"

  tags = {
    Name = "subnet-1-private-virginia"
  }
}

