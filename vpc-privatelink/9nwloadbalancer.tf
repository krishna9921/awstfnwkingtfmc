resource "aws_lb" "webserver-service-nlb" {
  name               = "webserver-service-nlb"
  internal           = true
  load_balancer_type = "network"
  subnets            = ["${aws_subnet.private-subnet2-privateservice-customer.id}"]

  enable_deletion_protection = false

  tags = {
    Name = "Network load balancer in subnet-1 in customer-vpc"
  }
}

#Listeners and routing

resource "aws_lb_listener" "webservice-internal-lb-listener" {
  load_balancer_arn = "${aws_lb.webserver-service-nlb.arn}"
  port = 80
  protocol = "TCP"

  default_action {
    target_group_arn = "${aws_lb_target_group.webserver-tg.arn}"
    type = "forward"
  }
}