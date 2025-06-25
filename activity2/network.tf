module "public_vpc" {
  source       = "git::https://github.com/asquarezone/TerraformModules.git//aws/publicvpc?ref=v1.0.0"
  network_info = var.network_info
  subnets_info = var.subnets_info
}