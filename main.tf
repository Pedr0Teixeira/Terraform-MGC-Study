terraform {
    required_providers {
        mgc = {
        source = "magalucloud/mgc"
        }
    }
}

provider "mgc" {
    region="br-se1"
    alias = "sudeste"
    api_key = "7bcad1f0-148f-4628-8a48-2a7f3f49899d"
    object_storage = {
        key_pair = {
            key_id = "87779445-c6fd-4629-bef8-975893b53a81"
            key_secret = "dfc9348b-2229-4b37-92c1-3292fccdbe2c"
        }
    }
}


provider "mgc" {
    region="br-ne1"
    alias = "nordeste"
    api_key = "7bcad1f0-148f-4628-8a48-2a7f3f49899d"
    object_storage = {
        key_pair = {
            key_id = "87779445-c6fd-4629-bef8-975893b53a81"
            key_secret = "dfc9348b-2229-4b37-92c1-3292fccdbe2c"
        }
    }
}

variable "psk" {
  description = "Chave Pre-shared Key para a VPN"
  default     = "minha_senha_forte_aqui"
}