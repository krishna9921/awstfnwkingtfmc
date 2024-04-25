resource "aws_instance" "ec2-private-mumbai" {
  provider      = aws.mumbai
  ami           = "ami-001843b876406202a"
  instance_type = "t2.nano"
  subnet_id     = aws_subnet.subnet-1-private-mumbai.id
  # associate_public_ip_address = true
  key_name               = "nwtfmc"
  vpc_security_group_ids = [aws_security_group.mumbai-sg-private.id]



  tags = {
    Name = "ec2-private"
  }
}