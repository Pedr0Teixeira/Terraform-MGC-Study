## Virtual Machines

output "instance_id" {
  depends_on  = [mgc_virtual-machine_instances.VM_Ubuntu]
  description = "ID of the created virtual machine"
  value       = resource.mgc_virtual-machine_instances.VM_Ubuntu.id
}

output "status" {
  depends_on  = [mgc_virtual-machine_instances.VM_Ubuntu]
  description = "Status of the virtual machine created, running, stopped, etc."
  value       = resource.mgc_virtual-machine_instances.VM_Ubuntu.status
}

output "current_ssh_key_name" {
  depends_on  = [mgc_virtual-machine_instances.VM_Ubuntu]
  description = "Name of the ssh key used"
  value       = resource.mgc_virtual-machine_instances.VM_Ubuntu.current_ssh_key_name
}

output "current_machine_type_name" {
  depends_on  = [mgc_virtual-machine_instances.VM_Ubuntu]
  description = "Name of the instance type used"
  value       = resource.mgc_virtual-machine_instances.VM_Ubuntu.current_machine_type.name
}

output "current_name" {
  depends_on  = [mgc_virtual-machine_instances.VM_Ubuntu]
  description = "Virtual machine name"
  value       = resource.mgc_virtual-machine_instances.VM_Ubuntu.current_name
}

output "vpc" {
  depends_on  = [mgc_virtual-machine_instances.VM_Ubuntu]
  description = "VPC being used by the virtual machine"
  value       = resource.mgc_virtual-machine_instances.VM_Ubuntu.network.vpc
}

##  Security Group

output "name" {
  description = "Name of SG"
  value       = module.security-group.name
}

output "id" {
  description = "ID of SG"
  value       = module.security-group.id
}

# output "rules" {
#   description = "List rules in SG"
#   value       = module.security-group.rules
# }