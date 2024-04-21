resource "aws_internet_gateway" "vpc-igw" {
  vpc_id = aws_vpc.first-vpc.id
  tags = {
    Name = "First-IGW"
  }
}
