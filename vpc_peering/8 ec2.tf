resource "aws_instance" "ec2-public-mumbai" {
  provider                    = aws.mumbai
  ami                         = "ami-001843b876406202a"
  instance_type               = "t2.nano"
  subnet_id                   = aws_subnet.subnet-1-public-mumbai.id
  associate_public_ip_address = true
  key_name                    = "nwtfmc"
  vpc_security_group_ids      = [aws_security_group.mumbai-sg-public.id]


  tags = {
    Name = "ec2-public-mumbai"
  }
}