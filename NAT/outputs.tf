output "ec2_public_instance_ids" {
  description = "List of IDs of instances"
  value       = aws_instance.first-ec2.id
}
output "ec2_public_ip" {
  description = "Public ip address assigned to the instances"
  value       = aws_instance.first-ec2.public_ip
}
# Private EC2 Instances
output "ec2_private_instance_id" {
  description = "List of private instance"
  value       = aws_instance.ec2-private.id
}
output "ec2_private_ip" {
  description = "private ip address assigned to the instances"
  value       = aws_instance.ec2-private.private_ip
}

output "nat_ip" {
  description = "EIP of NAT"
  value       = aws_eip.my_eip.id
}