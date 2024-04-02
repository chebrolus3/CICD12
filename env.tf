terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.90.0"
    }
  }
}

module "module_dev" {
    source = "./modules"
    resource_group_name              = "dev-resource-group"
    location                         = "East US"
    vnet                             = "dev-vnet1"
    vm_name                          = "dev-vm"
    vm_size                          = "Standard_DS1_v2"
    key_vault_name                   = "dev-keyy-vault"
    nicname                          = "dev12NIC"
    subnet                           = "dev-subnet"
    storage_account_name             = "storage90987"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "LRS"
}
