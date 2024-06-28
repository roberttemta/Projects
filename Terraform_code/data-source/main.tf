

resource "aws_instance" "web_demo" {
  ami = data.aws_ami.ami_1.id
  instance_type = data.aws_instance.web.instance_type
  key_name = data.aws_instance.web.key_name
  
}




