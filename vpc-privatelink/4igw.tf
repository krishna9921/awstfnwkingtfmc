# Creating IGW for internet traffic

resource "aws_internet_gateway" "vpc-igw" {
  #provider = aws.mumbai
  vpc_id = aws_vpc.mumbai-vpc.id
  tags = {
    Name = "Mumbai-IGW"
  }
}
