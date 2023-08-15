resource "aws_instance" "webserver1" {
  ami           = var.imageid
  instance_type = var.instancetype
  key_name      = aws_key_pair.terraform-key.key_name

  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  subnet_id              = aws_subnet.subnet1.id

  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = "firstsubnet"
  }
}

resource "aws_instance" "webserver2" {
  ami           = var.imageid
  instance_type = var.instancetype
  key_name      = aws_key_pair.terraform-key.key_name

  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  subnet_id              = aws_subnet.subnet2.id

  user_data = file("${path.module}/userdata2.sh")

  tags = {
    Name = "firstsubnet2"
  }
}