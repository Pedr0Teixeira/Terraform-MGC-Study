module "security-group" {
    source  = "terraform-magalu-cloud/security-group/mgc"
    version = "1.0.0"
    name = "SecGroup-Pedro"
    description = "Security Group do Pedro"
    rules = {
    http = {
      is_egress   = false
      ipv         = 4
      protocol    = "tcp"
      port_min    = 80
      port_max    = 80
      source_cidr = "10.69.69.24/32"
    }
    https = {
      is_egress   = false
      ipv         = 4
      protocol    = "tcp"
      port_min    = 443
      port_max    = 443
      source_cidr = "10.24.69.24/32"
    }
    altport = {
      is_egress   = true
      ipv         = 4
      protocol    = "tcp"
      port_min    = 2424
      port_max    = 6969
      source_cidr = "10.24.24.69/32"
    }
  }
}