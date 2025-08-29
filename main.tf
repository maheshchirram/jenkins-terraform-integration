resource "aws_instance" "test" {
  ami           = "var.iam"
  instance_type = "var.instance_type"
  key_name      = "new-key"

  tags = {
    Name = "cicd-terraform-integrate-server"
  }
}
