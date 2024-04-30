# Create Target Group
resource "aws_lb_target_group" "webserver-tg" {
  name     = "webserver-tg"
  port     = 80
  protocol = "TCP"
  vpc_id   = aws_vpc.customer-vpc.id
}

# Attach the target group for "test" ALB

resource "aws_lb_target_group_attachment" "webserver-tg-at" {
  target_group_arn = aws_lb_target_group.webserver-tg.arn
  target_id        = aws_instance.ec2-customer-webserver.id
  port             = 80
}
