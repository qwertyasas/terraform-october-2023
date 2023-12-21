resource "aws_key_pair" "d" {
  key_name   = "homework-key"
  public_key = file("~/.ssh/id_rsa.pub")
}