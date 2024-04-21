resource "aws_instance" "ec2-private" {
  ami           = "ami-001843b876406202a"
  instance_type = "t2.nano"
  subnet_id     = aws_subnet.private-subnet-2.id
  # associate_public_ip_address = true
  key_name = "nwtfmc"
  vpc_security_group_ids = [aws_security_group.private-sg.id] 

  

  tags = {
    Name = "ec2-private"
  }
}