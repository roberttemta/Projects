

output "PrivateIP" {
  description = "Private IP of EC2 instance"
  value       = aws_instance.my-instance.private_ip
}
output "Public-IP" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.my-instance.public_ip
}