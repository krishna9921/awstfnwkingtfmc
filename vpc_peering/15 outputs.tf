
output "ec2-public-mumbai-ip" {
  description = "Public ip address assigned to the instances in mumbai region"
  value       = "The public ip of the instance is ${aws_instance.ec2-public-mumbai.public_ip}"
}

output "ec2_private-mumbai_ip" {
  description = "private ip address assigned to the instances in mumbai region"
  value       = "The private ip of the instance is ${aws_instance.ec2-private-mumbai.private_ip}"
}

output "ec2_private-virginia_ip" {
  description = "private ip address assigned to the instances in virginia region"
  value       = "The private ip of the instance in virgina region of another vpc is ${aws_instance.ec2-private-virginia.private_ip}"
}