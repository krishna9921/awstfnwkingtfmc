# Creating Pubic and Private Subnets 

# Public subnet

resource "aws_subnet" "public-subnet-mumbai" {
  #provider                = aws.mumbai
  vpc_id                  = aws_vpc.mumbai-vpc.id
  cidr_block              = "10.100.0.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-subnet-mumbai"
  }
}

# Private subnet

resource "aws_subnet" "private-subnet-mumbai" {
  #provider          = aws.mumbai
  vpc_id            = aws_vpc.mumbai-vpc.id
  cidr_block        = "10.100.11.0/24"
  availability_zone = "ap-south-1a"
  #map_public_ip_on_launch  = "true"

  tags = {
    Name = "private-subnet-mumbai"
  }
}

