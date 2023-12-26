resource "aws_instance" "amb-prod" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  key_name      = "terraform"
  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id,
    aws_security_group.allow_http.id,
    aws_security_group.allow_egress.id,
  ]
  user_data = file("script.sh")

  tags = {
    Name = "amb-prod"
  }
}
