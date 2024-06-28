
#create ec2 instance for Lamp stack

resource "aws_instance" "resume_server" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = t2.medium
  key_name               = "virginiakey"
  user_data              = file("resume.sh")
   
  tags = {
    Name = "Lamp_stack"
    Environment = "dev"
  }
}
