locals {
  anywhere            = "0.0.0.0/0"
  has_public_subnets  = length(var.network_info.public_subnets) > 0
  has_private_subnets = length(var.network_info.private_subnets) > 0
}