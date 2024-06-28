
output "public-ip" {
  value = aws_instance.resume_server.public_ip
}

output "ssh" {
  value = "ssh -i virginiakey.pem ec2-user@${aws_instance.resume_server.public_ip}"
}
