module "bastion" {
  source = "./module"

  resource_group_name = module.resource_group.name
  region              = var.region
  name_prefix         = var.name_prefix
  ibmcloud_api_key    = var.ibmcloud_api_key
  vpc_name            = module.vpc.name
  subnet_count        = module.subnets.count
  subnets             = module.subnets.subnets
  ssh_key_id          = module.vpcssh.id
}
