variable "vpc_cidr" {}
variable "region" {
  default = "us-east-1"
}

variable "mgmt_cidr" {
}
variable "public_subnets" {
}

variable "private_subnets" {
}

variable "ssh_keypair_name" {}

variable "csr_instance_size" {
  default = "c4.large"
}

variable "datacenter" {
}
variable "hub_organization" {}

variable "hub_workspace_name" {}

variable "tunnel_ip" {}