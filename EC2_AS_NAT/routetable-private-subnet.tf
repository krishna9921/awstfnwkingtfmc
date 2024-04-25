resource "aws_route_table" "private-route" {
    vpc_id = aws_vpc.first-vpc.id
    
    route {
        cidr_block = "0.0.0.0/0"
        network_interface_id = aws_instance.nat-ec2.primary_network_interface_id
    }
    

    tags = {
    Name = "Private route table"
    }
  
}

resource "aws_route_table_association" "rt-subnet-private" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.private-route.id
}
