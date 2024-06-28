
resource "aws_instance" "web" {
  ami                                  = "ami-0195204d5dce06d99"
  instance_type                        = "t2.micro"
  key_name                             = "virginiakey"
  security_groups                      = ["ssh_httpd-sg"]
  subnet_id                            = "subnet-02c07f79f1b91571c"
    vpc_security_group_ids      = ["sg-03c29934582a45bbe"]
  
tags = {
    Name = "Webserver_10"
  }

}
