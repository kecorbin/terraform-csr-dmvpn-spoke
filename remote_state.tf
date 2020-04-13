data "terraform_remote_state" "hub" {
  backend = "remote"

  config = {
    organization = var.hub_organization
    workspaces = {
      name = var.hub_workspace_name
    }
  }
  defaults = {
    csr_ip = "1.1.1.1"
  }
}

locals {
  hub_public_ip  = data.terraform_remote_state.hub.outputs.csr_ip
  hub_tunnel_ip  = data.terraform_remote_state.hub.outputs.tunnel_ip
  hub_consul_ip  = data.terraform_remote_state.hub.outputs.consul_ip
  hub_datacenter = data.terraform_remote_state.hub.outputs.datacenter
  isakmp_key = data.terraform_remote_state.hub.outputs.isakmp_key
  tunnel_key = data.terraform_remote_state.hub.outputs.tunnel_key
  nhrp_authentication_key = data.terraform_remote_state.hub.outputs.nhrp_authentication_key
  csr_hostname = "${var.datacenter}-csr1"
}