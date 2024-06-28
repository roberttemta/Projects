
/*
resource "aws_iam_group" "group1" {
  name = "manager"
}
resource "aws_iam_user" "user1" {
  name = "Robert"
  depends_on = [ aws_iam_group.group1 ]
  lifecycle {
    prevent_destroy = false
  }
}
*/

resource "aws_instance" "serve1" {
  ami = "ami-0195204d5dce06d99"
  instance_type = "t3.small"
  key_name = "virginiakey"
  lifecycle {
    create_before_destroy = true
  }
}