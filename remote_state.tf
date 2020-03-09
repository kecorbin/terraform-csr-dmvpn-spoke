data "terraform_remote_state" "hub" {
  backend = "remote"

  config = {
    organization = var.hub_organization
    workspaces = {
      name = var.hub_workspace_name
    }
  }
}

locals {
    hub_public_ip = data.terraform_remote_state.hub.outputs.csr_ip
    hub_tunnel_ip = data.terraform_remote_state.hub.tunnel_ip
}