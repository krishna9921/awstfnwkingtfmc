resource "aws_route_table" "first-route" {
    vpc_id = aws_vpc.first-vpc.id
    
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.vpc-igw.id
    }

    tags = {
    Name = "First route table"
    }
  
}

resource "aws_route_table_association" "rt-subnet" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.first-route.id
}