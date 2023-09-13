resource "aws_instance" "db" {
  ami = "ami-02bb7d8191b50f4bb"
  instance_type = "t2.micro"
    tags = {
     "Name" = "Db Server"
  }
}