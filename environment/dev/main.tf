module "rgs_module" {
  source  = "../../module/Resource_group"
  rgs_map = var.rgs_details
}

module "stgs_module" {
  source     = "../../module/storage_account"
  stgs_map   = var.stgs_details
  depends_on = [module.rgs_module]
}
module "vnets_module" {
  source     = "../../module/Vnet"
  vnets_map  = var.vnets_details
  depends_on = [module.rgs_module]
}
module "subs_module" {
  source     = "../../module/subnet"
  subs_map   = var.subs_details
  depends_on = [module.rgs_module, module.vnets_module]
}
module "vms_module" {
  source  = "../../module/vm"
  vms_map = var.vm_details
  depends_on = [ module.rgs_module,module.vnets_module,module.subs_module ]
}
module "pip_module" {
  source = "../../module/public_ip"
  pip_map = var.pip_details
  depends_on = [ module.rgs_module ]
}