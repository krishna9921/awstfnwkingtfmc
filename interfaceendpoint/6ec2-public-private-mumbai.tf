# Public instance with external ip
resource "aws_instance" "ec2-public-mumbai" {
  #provider                    = aws.mumbai
  ami                         = "ami-001843b876406202a"
  instance_type               = "t2.nano"
  subnet_id                   = aws_subnet.public-subnet-mumbai.id
  associate_public_ip_address = true
  key_name                    = "nwtfmc"
  vpc_security_group_ids      = [aws_security_group.mumbai-sg-public.id]


  tags = {
    Name = "ec2-public-mumbai"
  }
}


# Private instance with private ip along with IAM instance profile 

resource "aws_instance" "ec2-private-mumbai" {
  #provider      = aws.mumbai
  ami           = "ami-001843b876406202a"
  instance_type = "t2.nano"
  subnet_id     = aws_subnet.private-subnet-mumbai.id
  # associate_public_ip_address = true
  key_name               = "nwtfmc"
  vpc_security_group_ids = [aws_security_group.mumbai-sg-private.id]
  iam_instance_profile   = aws_iam_instance_profile.s3read-instance-profile.name



  tags = {
    Name = "ec2-private"
  }
}