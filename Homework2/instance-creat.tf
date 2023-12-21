data "aws_ami" "a" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Deep Learning OSS Nvidia Driver AMI GPU PyTorch 1.13.1 (Amazon Linux 2) 20231219"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.a.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.b.id]
  key_name = aws_key_pair.d.key_name
  user_data = file("apache.sh")

  tags = {
    Name = "Homework-ec2"
  }
}