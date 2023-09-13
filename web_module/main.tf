resource "aws_instance" "web" {
  ami = "ami-02bb7d8191b50f4bb"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.web.name]
  user_data = file("${path.module}/server-script.sh")
  tags = {
     "Name" = var.instance_name
  }
}
