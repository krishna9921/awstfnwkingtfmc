# Creating endpoint service 

resource "aws_vpc_endpoint_service" "webserver-endpoint-service" {
  acceptance_required        = false
  network_load_balancer_arns = [aws_lb.webserver-service-nlb.arn]
  #supported_ip_address_types = "ipv4"
}