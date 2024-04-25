resource "aws_vpc" "virginia-vpc" {
  provider   = aws.virginia
  cidr_block = "10.200.0.0/16"


  tags = {
    Name = "virginia-vpc"
  }
}