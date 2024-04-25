resource "aws_subnet" "subnet-1-public-mumbai" {
  provider                = aws.mumbai
  vpc_id                  = aws_vpc.mumbai-vpc.id
  cidr_block              = "10.100.0.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "subnet-1-public-mumbai"
  }
}

resource "aws_subnet" "subnet-1-private-mumbai" {
  provider          = aws.mumbai
  vpc_id            = aws_vpc.mumbai-vpc.id
  cidr_block        = "10.100.11.0/24"
  availability_zone = "ap-south-1a"
  #map_public_ip_on_launch  = "true"

  tags = {
    Name = "subnet-1-private-mumbai"
  }
}

