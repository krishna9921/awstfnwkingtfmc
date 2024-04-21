resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.my_eip.id
  subnet_id     = aws_subnet.subnet-1-1-nat.id

  tags = {
    Name = "NATGW"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.vpc-igw]
}

resource "aws_eip" "my_eip" {
  
}