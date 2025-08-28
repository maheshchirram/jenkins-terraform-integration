resource "aws_instance" "test" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t3.micro"
  key_name      = "new-key"

  tags = {
    Name = "cicd-terraform-integrate-server"
  }
}
