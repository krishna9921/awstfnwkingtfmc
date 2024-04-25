resource "aws_route_table" "mumbai-route" {
  provider = aws.mumbai
  vpc_id   = aws_vpc.mumbai-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc-igw.id
  }

  tags = {
    Name = "mumbai route table"
  }

}

resource "aws_route_table_association" "rt-subnet" {
  subnet_id      = aws_subnet.subnet-1-public-mumbai.id
  route_table_id = aws_route_table.mumbai-route.id
}


# resource "aws_route_table_association" "rt-subnet-nat" {
#   subnet_id      = aws_subnet.subnet-1-1-nat.id
#   route_table_id = aws_route_table.mumbai-route.id
# }