
data "aws_ami" "ami_1" {
  executable_users = ["self"] 
  most_recent      = true
  //name_regex       = "^myami-\\d{3}"
  owners           = ["amazon"]             # or ["self"] if you have your own AMI

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


data "aws_instance" "web" {
  instance_id = "i-01633b1f7b883b97b"
}