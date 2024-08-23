## Virtual Machines

output "instance_id" {
  depends_on  = [mgc_virtual_machine_instances.VM_Ubuntu]
  description = "ID of the created virtual machine"
  value       = resource.mgc_virtual_machine_instances.VM_Ubuntu.id
}

output "ssh_key_name" {
  depends_on  = [mgc_virtual_machine_instances.VM_Ubuntu]
  description = "Name of the ssh key used"
  value       = resource.mgc_virtual_machine_instances.VM_Ubuntu.ssh_key_name
}

output "ip_private" {
  depends_on  = [mgc_virtual_machine_instances.VM_Ubuntu]
  description = "IP Private"
  value       = resource.mgc_virtual_machine_instances.VM_Ubuntu.network.private_address
}

output "ip_public" {
  depends_on  = [mgc_virtual_machine_instances.VM_Ubuntu]
  description = "IP Public"
  value       = resource.mgc_virtual_machine_instances.VM_Ubuntu.network.public_address
}

output "machine_type_name" {
  depends_on  = [mgc_virtual_machine_instances.VM_Ubuntu]
  description = "Name of the instance type used"
  value       = resource.mgc_virtual_machine_instances.VM_Ubuntu.machine_type.name
}

##  Security Group

