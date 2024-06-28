
resource "aws_route53_record" "rc1" {
  zone_id = "Z01225882ZX0WMY72OCL4"
  name    = "resume.temtagroup.com"
  type    = "A"
  ttl     = 300
  records = [aws_instance.resume_server.public_ip]
}