resource "azurerm_public_ip" "pip_block" {
    for_each = var.pip_map
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  allocation_method   = "Static"

  tags = each.value.pip_tags
}