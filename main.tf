resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public" {
  vpc_id      = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_instance" "web" {
  ami          = var.ami
  instance_type = var.instance_type
  subnet_id    = aws_subnet.public.id


  tags = {
    Name = var.instance_name
  }
}