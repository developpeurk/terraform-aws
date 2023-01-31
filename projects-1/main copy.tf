provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "my-first-server" {
  ami             = "ami-0778521d914d23bc1"
  instance_type   = "t2.micro"
  tags = {
    Name = "ubuntu"
  }
}

