#---vpc/outputs.tf---#

output "subnet_id" {
  description = "ID of subnet"
  value       = aws_subnet.instance_subnet.id
}