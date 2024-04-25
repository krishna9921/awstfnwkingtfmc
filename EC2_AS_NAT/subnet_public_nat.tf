resource "aws_subnet" "subnet-1-public" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch  = "true"

  tags = {
    Name = "subnet-1-public"
  }
}

resource "aws_subnet" "subnet-1-1-nat" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch  = "true"

  tags = {
    Name = "subnet-1-1-nat"
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "private-subnet-2"
  }
}