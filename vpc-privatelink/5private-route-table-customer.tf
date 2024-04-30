# Creating private route table and its assosciation for private-subnet2-customer

resource "aws_route_table" "private-route-sn2-customer" {
  vpc_id = aws_vpc.customer-vpc.id




  tags = {
    Name = "Private route table for web-server ec2 in customer vpc subnet 2"
  }

}

resource "aws_route_table_association" "rt-subnet1-private" {
  #provider       = aws.mumbai
  subnet_id      = aws_subnet.private-subnet1-nlb-customer.id
  route_table_id = aws_route_table.private-route-sn2-customer.id
}

resource "aws_route_table_association" "rt-subnet2-private" {
  #provider       = aws.mumbai
  subnet_id      = aws_subnet.private-subnet2-privateservice-customer.id
  route_table_id = aws_route_table.private-route-sn2-customer.id
}

