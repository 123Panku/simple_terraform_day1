provider "aws" {

  region = "ap-south-1"
}

resource "aws_instance" "ec2_instance" {
    ami = "ami-0e35ddab05955cf57"
    instance_type = "t2.micro"
  
}

resource "aws_eip" "ip" {
  instance = aws_instance.ec2_instance.id
}
