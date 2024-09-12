## FIREWALL UBUNTU SE1

output "instance_id_firewall_se1" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu]
  description = "ID of the created virtual machine"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu.id
}

output "ssh_key_name_firewall_se1" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu]
  description = "Name of the ssh key used"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu.ssh_key_name
}

output "ip_private_firewall_se1" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu]
  description = "IP Private"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu.network.private_address
}

output "ip_public_firewall_se1" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu]
  description = "IP Public"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu.network.public_address
}

output "machine_type_name_firewall_se1" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu]
  description = "Name of the instance type used"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu.machine_type.name
}

## FIREWALL UBUNTU NE1

output "instance_id_firewall_ne1" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu_2]
  description = "ID of the created virtual machine"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu_2.id
}

output "ssh_key_name_firewall_ne1" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu_2]
  description = "Name of the ssh key used"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu_2.ssh_key_name
}

output "ip_private_firewall_ne1" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu_2]
  description = "IP Private"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu_2.network.private_address
}

output "ip_public_firewall_ne1" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu_2]
  description = "IP Public"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu_2.network.public_address
}

output "machine_type_name_firewall_ne1" {
  depends_on  = [mgc_virtual_machine_instances.vm_ubuntu_2]
  description = "Name of the instance type used"
  value       = resource.mgc_virtual_machine_instances.vm_ubuntu_2.machine_type.name
}

## VM WINDOWS

# output "instance_id_windows" {
#   depends_on  = [mgc_virtual_machine_instances.vm_windows]
#   description = "ID of the created virtual machine"
#   value       = resource.mgc_virtual_machine_instances.vm_windows.id
# }

# output "ip_private_windows" {
#   depends_on  = [mgc_virtual_machine_instances.vm_windows]
#   description = "IP Private"
#   value       = resource.mgc_virtual_machine_instances.vm_windows.network.private_address
# }

# output "ip_public_windows" {
#   depends_on  = [mgc_virtual_machine_instances.vm_windows]
#   description = "IP Public"
#   value       = resource.mgc_virtual_machine_instances.vm_windows.network.public_address
# }

# output "machine_type_name_windows" {
#   depends_on  = [mgc_virtual_machine_instances.vm_windows]
#   description = "Name of the instance type used"
#   value       = resource.mgc_virtual_machine_instances.vm_windows.machine_type.name
# }

##  Security Group

