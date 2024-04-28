# Creating public route table and its assosciation


resource "aws_route_table" "mumbai-route" {
  #provider = aws.mumbai
  vpc_id = aws_vpc.mumbai-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc-igw.id
  }

  tags = {
    Name = "mumbai route table"
  }

}

resource "aws_route_table_association" "rt-public-route" {
  subnet_id      = aws_subnet.public-subnet-mumbai.id
  route_table_id = aws_route_table.mumbai-route.id
}

# Creating private route table and its assosciation

resource "aws_route_table" "private-route-mumbai" {
  vpc_id = aws_vpc.mumbai-vpc.id




  tags = {
    Name = "Private route table for mumbai ec2"
  }

}

resource "aws_route_table_association" "rt-subnet-private" {
  #provider       = aws.mumbai
  subnet_id      = aws_subnet.private-subnet-mumbai.id
  route_table_id = aws_route_table.private-route-mumbai.id
}
