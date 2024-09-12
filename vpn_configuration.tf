resource "null_resource" "configure_vpn" {
    provisioner "remote-exec" {
        inline = [
            "sudo apt update",
            "sudo apt install -y strongswan net-tools",
            "echo 'conn se-ne\n    left=${mgc_virtual_machine_instances.vm_ubuntu.network.private_address}\n    leftid=${mgc_virtual_machine_instances.vm_ubuntu.network.public_address}\n    leftsubnet=172.40.1.0/22\n    right=${mgc_virtual_machine_instances.vm_ubuntu_2.network.public_address}\n    rightsubnet=172.30.2.0/22\n    authby=psk\n    auto=start\n    keyexchange=ikev2\n    ike=aes256-sha1-modp1024\n    esp=aes256-sha1' | sudo tee -a /etc/ipsec.conf",
            "echo '${mgc_virtual_machine_instances.vm_ubuntu.network.public_address} ${mgc_virtual_machine_instances.vm_ubuntu_2.network.public_address} : PSK \"${var.psk}\"' | sudo tee -a /etc/ipsec.secrets",
            "sudo systemctl restart strongswan-starter.service",
            "sudo ipsec restart",
            "sudo ipsec status"
        ]

        connection {
            type        = "ssh"
            user        = "ubuntu"
            private_key = file("/Users/pedroteixeira/Documents/Certificados/Arquitetos/managed-services-openssh")
            host        = mgc_virtual_machine_instances.vm_ubuntu.network.public_address
        }
    }
    depends_on = [mgc_virtual_machine_instances.vm_ubuntu, mgc_virtual_machine_instances.vm_ubuntu_2]
}

resource "null_resource" "configure_vpn_2" {
    provisioner "remote-exec" {
        inline = [
            "sudo apt update",
            "sudo apt install -y strongswan net-tools",
            "echo 'conn ne-se\n    left=${mgc_virtual_machine_instances.vm_ubuntu_2.network.private_address}\n    leftid=${mgc_virtual_machine_instances.vm_ubuntu_2.network.public_address}\n    leftsubnet=172.30.2.0/22\n    right=${mgc_virtual_machine_instances.vm_ubuntu.network.public_address}\n    rightsubnet=172.40.1.0/22\n    authby=psk\n    auto=start\n    keyexchange=ikev2\n    ike=aes256-sha1-modp1024\n    esp=aes256-sha1' | sudo tee -a /etc/ipsec.conf",
            "echo '${mgc_virtual_machine_instances.vm_ubuntu_2.network.public_address} ${mgc_virtual_machine_instances.vm_ubuntu.network.public_address} : PSK \"${var.psk}\"' | sudo tee -a /etc/ipsec.secrets",
            "sudo systemctl restart strongswan-starter.service",
            "sudo ipsec restart",
            "sudo ipsec status"
        ]

        connection {
            type        = "ssh"
            user        = "ubuntu"
            private_key = file("/Users/pedroteixeira/Documents/Certificados/Arquitetos/managed-services-openssh")
            host        = mgc_virtual_machine_instances.vm_ubuntu_2.network.public_address
        }
    }
    depends_on = [mgc_virtual_machine_instances.vm_ubuntu, mgc_virtual_machine_instances.vm_ubuntu_2]
}
