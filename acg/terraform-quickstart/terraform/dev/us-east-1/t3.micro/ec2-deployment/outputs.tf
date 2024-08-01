#---root/output.tf---#
output "instance_id" {
  description = "ID of Instance"
  value       = module.instance.instance_id[*]
}