variable "region" {
  default = "us-east-1"
}

variable "ami" {
  default = "ami-0953476d60561c955"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_name" {
  default = "armstrong-customs"  # Custom name tag for EC2
}
