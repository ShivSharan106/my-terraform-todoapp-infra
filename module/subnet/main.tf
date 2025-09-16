resource "azurerm_subnet" "subs_bolck" {
  for_each             = var.subs_map
  name                 = each.value.sub_name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.address_prefixes
}
