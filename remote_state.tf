data "terraform_remote_state" "hub" {
  backend = "remote"

  config = {
    organization = "Network"
    workspaces = {
      name = "terraform-csr-dmvpn-hub"
    }
  }
}

locals {
    hub_public_ip = data.terraform_remote_state.hub.outputs.csr_ip
    hub_tunnel_ip = "192.168.1.1"
}