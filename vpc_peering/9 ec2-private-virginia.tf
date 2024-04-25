resource "aws_instance" "ec2-private-virginia" {
  provider      = aws.virginia
  ami           = "ami-04e5276ebb8451442"
  instance_type = "t2.nano"
  subnet_id     = aws_subnet.subnet-1-private-virginia.id
  # associate_public_ip_address = true
  key_name               = "nwtfmcvirginia"
  vpc_security_group_ids = [aws_security_group.virginia-sg-private.id]



  tags = {
    Name = "ec2-private-virginia"
  }
}