
# Private instance with private ip along with IAM instance profile 

resource "aws_instance" "ec2-customer-webserver" {
  #provider      = aws.mumbai
  ami           = "ami-0822195c69b5f281a"
  instance_type = "t2.nano"
  subnet_id     = aws_subnet.private-subnet2-privateservice-customer.id
  # associate_public_ip_address = true
  key_name               = "nwtfmc"
  vpc_security_group_ids = [aws_security_group.webserver-sg-private-only-from-NWLB.id]
  #iam_instance_profile   = aws_iam_instance_profile.s3read-instance-profile.name



  tags = {
    Name = "ec2-customer-webserver"
  }
}