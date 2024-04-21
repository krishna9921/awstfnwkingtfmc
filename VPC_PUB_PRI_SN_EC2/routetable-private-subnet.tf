resource "aws_route_table" "private-route" {
    vpc_id = aws_vpc.first-vpc.id
    
    # route {
    #     cidr_block = "0.0.0.0/0"
    #     gateway_id = aws_internet_gateway.vpc-igw.id
    # }

    tags = {
    Name = "Private route table"
    }
  
}

resource "aws_route_table_association" "rt-subnet-private" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.private-route.id
}