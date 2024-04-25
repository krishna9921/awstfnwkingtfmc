resource "aws_security_group" "ec2-nat-sg" {
    name = "ec2-nat-sg"
    vpc_id = aws_vpc.first-vpc.id
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["10.0.0.0/16"]

    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["10.0.0.0/16"]

    }
    ingress {
        from_port = 8
        to_port = 1
        protocol = "icmp"
        cidr_blocks = ["10.0.0.0/16"]

    }
    # egress {
    #     from_port = 0
    #     to_port = 0
    #     protocol = "-1"
    #     cidr_blocks = ["0.0.0.0/0"]
    # }

    tags = {
        Name = "ec2-nat-sg"

    }

}
