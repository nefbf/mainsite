terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2 / example
  instance_type = "t3.micro"
  tags = {
    Name = "example-instance"
  }
}
