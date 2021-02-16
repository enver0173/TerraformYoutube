resource "aws_instance" "web" {
  ami           = "ami-059f1cc52e6c85908"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
