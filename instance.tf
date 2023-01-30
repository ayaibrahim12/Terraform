resource "aws_instance" "web" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.security_group.id]
  subnet_id                   = aws_subnet.public.id
  associate_public_ip_address = true
  user_data                   = file("userdata")
}

