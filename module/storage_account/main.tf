resource "azurerm_storage_account" "example" {
  for_each                 = var.stgs_map
  name                     = each.value.sa_name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = each.value.sa_tgs
}
