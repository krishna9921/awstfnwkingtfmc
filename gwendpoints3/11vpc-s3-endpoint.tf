# Creating vpc gw endpoint
resource "aws_vpc_endpoint" "vpc-s3-gw-endpoint" {
  vpc_id       = aws_vpc.mumbai-vpc.id
  service_name = "com.amazonaws.ap-south-1.s3"
  tags = {
    Name = "vpc-s3-gw-endpoint"
  }
}

# creating route table for vpc gw endpoint

resource "aws_vpc_endpoint_route_table_association" "vpc-gw-endpoint-route" {
  route_table_id  = aws_route_table.private-route-mumbai.id
  vpc_endpoint_id = aws_vpc_endpoint.vpc-s3-gw-endpoint.id

}