# Printing the outputs of the public and private ip for SSH

output "ec2-public-mumbai-ip" {
  description = "Public ip address assigned to the instances in mumbai region"
  value       = "The public ip of the instance is ${aws_instance.ec2-public-mumbai.public_ip}"
}

output "ec2_private-mumbai_ip" {
  description = "private ip address assigned to the instances in mumbai region"
  value       = "The private ip of the instance is ${aws_instance.ec2-private-mumbai.private_ip}"
}

# output "webserver-interface-endpoint" {
#   description = "webserver-interface-endpoint"
#   value       = "The DNS name of webserver-interface-endpoint ${aws_vpc_endpoint_service.webserver-endpoint-service.id}"
# }