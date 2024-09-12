// virtual_machines.tf
resource "mgc_virtual_machine_instances" "vm_ubuntu" {
    provider = mgc.sudeste
    name     = "firewall-ubuntu-se"
    machine_type = {
        name = "BV1-2-20"
    }

    image = {
        name = "cloud-ubuntu-22.04 LTS"
    }

    network = {
        associate_public_ip = true
        delete_public_ip    = true
    }

    ssh_key_name = "managed-services"
}

resource "mgc_virtual_machine_instances" "vm_ubuntu_2" {
    provider = mgc.nordeste
    name     = "firewall-ubuntu-ne"
    machine_type = {
        name = "BV1-2-20"
    }

    image = {
        name = "cloud-ubuntu-22.04 LTS"
    }

    network = {
        associate_public_ip = true
        delete_public_ip    = true
    }

    ssh_key_name = "managed-services"
}

# resource "mgc_virtual_machine_instances" "vm_windows" {
#     provider = mgc.sudeste
#     name = "vm-windows-pedro"
#     machine_type = {
#         name = "BV4-16-100"
#     }

#     image = {
#         name = "windows-server-2022"
#     }

#     network = {
#         associate_public_ip = true # If true, will create a public IP
#         delete_public_ip    = true
#         interface = {
#             security_groups = [{ "id" : module.security-group.id}]
#         }
#     }

# }