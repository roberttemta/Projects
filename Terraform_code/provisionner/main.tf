
resource "aws_instance" "webserver" {
  ami = "ami-0195204d5dce06d99"
  instance_type = "t2.micro"
  key_name = aws_key_pair.ec2_key1.key_name

/*
  provisioner "local-exec" {
    command = "echo ${aws_instance.webserver.public_ip} >> test.sh"
    //command = "echo ${self.public_ip} >> test.sh"  # Self because the provisionner is in the ressource.
  }
*/
depends_on = [ aws_key_pair.ec2_key1 ]
}


resource "null_resource" "n1" {
  connection {
    host = aws_instance.webserver.public_ip
    type = "ssh"
    user = "ec2-user"
    private_key = file(local_file.ssh_key.filename)
  }

  provisioner "local-exec" {
    command = "echo hello"
  }

  provisioner "remote-exec" {
    inline = [ 
        "sudo useradd robert",
        "mkdir terraform",
    ]
  }
  
  provisioner "file" {
    source = "${aws_key_pair.ec2_key1.key_name}.pem"
    destination = "/tmp/key.pem"
  }

  depends_on = [ aws_instance.webserver, local_file.ssh_key ]

}