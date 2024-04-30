# VPC resource for mumbai region

resource "aws_vpc" "mumbai-vpc" {
  #provider   = aws.mumbai
  cidr_block           = "10.100.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "mumbai-vpc"
  }
}


resource "aws_vpc" "customer-vpc" {
  #provider   = aws.mumbai
  cidr_block           = "10.200.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "customer-vpc"
  }
}