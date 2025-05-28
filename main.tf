resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"   # Defines the IP address range
}

resource "aws_subnet" "public" {
  vpc_id      = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_instance" "web" {
  ami          = var.ami
  instance_type = var.instance_type
  subnet_id    = aws_subnet.public.id    # Places the instance insode public subnet


  tags = {
    Name = var.instance_name  # Tags instance with a name
  }
}