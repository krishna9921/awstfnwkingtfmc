# VPC resource for mumbai region

resource "aws_vpc" "mumbai-vpc" {
  #provider   = aws.mumbai
  cidr_block = "10.100.0.0/16"
  tags = {
    Name = "mumbai-vpc"
  }
}