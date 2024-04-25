resource "aws_route_table" "private-route-virginia" {
  provider = aws.virginia
  vpc_id   = aws_vpc.virginia-vpc.id

  route {
    cidr_block                = "10.100.0.0/16"
    vpc_peering_connection_id = aws_vpc_peering_connection.mumbai-virginia.id
  }


  tags = {
    Name = "Private route table for Virginia"
  }

}

resource "aws_route_table_association" "rt-subnet-private-virginia" {
  provider       = aws.virginia
  subnet_id      = aws_subnet.subnet-1-private-virginia.id
  route_table_id = aws_route_table.private-route-virginia.id
}
