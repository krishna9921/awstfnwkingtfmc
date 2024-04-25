resource "aws_vpc_peering_connection" "mumbai-virginia" {
  peer_vpc_id = aws_vpc.virginia-vpc.id
  vpc_id      = aws_vpc.mumbai-vpc.id
  peer_region = "us-east-1"
  auto_accept = false

  tags = {
    Name = "VPC Peering between Mumbai and virginia"
  }
}

resource "aws_vpc_peering_connection_accepter" "virginia-mumbai" {
  provider                  = aws.virginia
  vpc_peering_connection_id = aws_vpc_peering_connection.mumbai-virginia.id
  auto_accept               = true
  tags = {
    Name = "Accepting the VPC Peering between Mumbai and virginia"
  }

}

