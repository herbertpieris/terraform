#---instance/output.tf---#
output "instance_id" {
  description = "ID of Instance"
  value       = aws_instance.app_server[*].id
}