resource "aws_instance" "nat-ec2" {
  ami           = "ami-0961c84799b9e830d"
  instance_type = "t2.nano"
  subnet_id     = aws_subnet.subnet-1-1-nat.id
  associate_public_ip_address = true
  key_name = "nwtfmc"
  vpc_security_group_ids = [aws_security_group.ec2-nat-sg.id]
  source_dest_check    = false 
  
  tags = {
    Name = "nat-ec2"
  }
}