resource "azurerm_resource_group" "rgs_block" {
  for_each = var.rgs_map
  name     = each.value.rg_name
  location = each.value.rg_location
  tags     = each.value.rg_tags
}
