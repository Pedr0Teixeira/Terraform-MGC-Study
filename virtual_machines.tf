// virtual_machines.tf
resource "mgc_virtual-machine_instances" "VM_Ubuntu" {
    provider = mgc.sudeste
    name = "VM-Ubuntu-Terraform-Pedro"
    machine_type = {
        name = "BV1-2-20"
    }

    image = {
        name = "cloud-ubuntu-22.04 LTS"
    }

    network = {
        associate_public_ip = true # If true, will create a public IP
        delete_public_ip    = true
        interface = {
            security_groups = [{ "id" : module.security-group.id}]
        }
    }

    ssh_key_name = "managed-services"
}