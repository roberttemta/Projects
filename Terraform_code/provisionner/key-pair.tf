

# Generates a secure private key and encodes it as PEM
resource "tls_private_key" "ec2_key1" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
# Create the Key Pair
resource "aws_key_pair" "ec2_key1" {
  key_name   = "wordpress1" 
  public_key = tls_private_key.ec2_key1.public_key_openssh
}
# Save file
resource "local_file" "ssh_key" {
  filename = "${aws_key_pair.ec2_key1.key_name}.pem"
  content  = tls_private_key.ec2_key1.private_key_pem
  file_permission = "400"
}