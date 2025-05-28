output "instance_id" {
  value = aws_instance.web.id # Displays the ID of EC2 Instacnes after 'terraform apply' 
}

output "subnet_id" {
  value = aws_subnet.public.id  # Displays the ID of subnet afte 'terraform apply'
}