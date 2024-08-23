## Virtual Machines

output "instance_id" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu]
  description = "ID of the created virtual machine"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu.id
}

output "ssh_key_name" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu]
  description = "Name of the ssh key used"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu.ssh_key_name
}

output "ip_private" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu]
  description = "IP Private"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu.network.private_address
}

output "ip_public" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu]
  description = "IP Public"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu.network.public_address
}

output "machine_type_name" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu]
  description = "Name of the instance type used"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu.machine_type.name
}

##  Security Group

