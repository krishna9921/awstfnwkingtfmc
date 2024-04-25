resource "aws_route_table" "private-route-mumbai" {
  vpc_id   = aws_vpc.mumbai-vpc.id
  provider = aws.mumbai

  route {
    cidr_block                = "10.200.0.0/16"
    vpc_peering_connection_id = aws_vpc_peering_connection.mumbai-virginia.id
  }


  tags = {
    Name = "Private route table for mumbai ec2"
  }

}

resource "aws_route_table_association" "rt-subnet-private" {
  provider       = aws.mumbai
  subnet_id      = aws_subnet.subnet-1-private-mumbai.id
  route_table_id = aws_route_table.private-route-mumbai.id
}
