output "instance_id" {
  value = aws_instance.web.id
}

output "subnet_id" {
  value = aws_subnet.public.id
}