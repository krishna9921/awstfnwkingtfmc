# Printing the outputs of the public and private ip for SSH

output "ec2-public-mumbai-ip" {
  description = "Public ip address assigned to the instances in mumbai region"
  value       = "The public ip of the instance is ${aws_instance.ec2-public-mumbai.public_ip}"
}

output "ec2_private-mumbai_ip" {
  description = "private ip address assigned to the instances in mumbai region"
  value       = "The private ip of the instance is ${aws_instance.ec2-private-mumbai.private_ip}"
}

output "SQS-URL" {
  description = "SQS URL"
  value       = "The URL for SQS IS ${aws_sqs_queue.vpc-endpoint-interface-demo.id}"
}