module "rg" {
  source   = "../../module/azurerm_resource_group"
  rg_name  = "rg-todo-dev"
  location = "East US"
}

module "stg" {
  depends_on = [module.rg]
  source     = "../../module/azurerm_storage_account_name"
  stg_name   = "stgtododev1234"
  rg_name    = "rg-todo-dev"
  location   = "East US"
}