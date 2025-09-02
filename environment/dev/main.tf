module "rgs_module" {
  source  = "../../module/Resource_group"
  rgs_map = var.rgs_details
}

module "stgs_module" {
  source     = "../../module/storage_account"
  stgs_map   = var.stgs_details
  depends_on = [module.rgs_module]
}
