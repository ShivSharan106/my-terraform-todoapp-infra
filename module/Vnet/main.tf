resource "azurerm_virtual_network" "vnets_block" {
  for_each            = var.vnets_map
  name                = each.value.vnet_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  address_space       = each.value.address_space
  tags                = each.value.va_tags
}
