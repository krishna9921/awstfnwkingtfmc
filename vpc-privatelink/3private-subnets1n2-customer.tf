# Creating Private Subnets NLB and Private Service

# Public subnet

resource "aws_subnet" "private-subnet1-nlb-customer" {
  #provider                = aws.customer
  vpc_id            = aws_vpc.customer-vpc.id
  cidr_block        = "10.200.11.0/24"
  availability_zone = "ap-south-1a"


  tags = {
    Name = "private-subnet1-nlb-customer"
  }
}

# Private subnet

resource "aws_subnet" "private-subnet2-privateservice-customer" {
  #provider          = aws.customer
  vpc_id            = aws_vpc.customer-vpc.id
  cidr_block        = "10.200.12.0/24"
  availability_zone = "ap-south-1a"
  #map_public_ip_on_launch  = "true"

  tags = {
    Name = "private-subnet2-privateservice-customer"
  }
}

