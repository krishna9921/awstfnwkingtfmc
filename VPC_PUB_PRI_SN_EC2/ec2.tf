resource "aws_instance" "first-ec2" {
  ami           = "ami-001843b876406202a"
  instance_type = "t2.nano"
  subnet_id     = aws_subnet.subnet-1.id
  associate_public_ip_address = true
  key_name = "nwtfmc"
  vpc_security_group_ids = [aws_security_group.first-sg.id] 
  
  
  tags = {
    Name = "first-ec2"
  }
}