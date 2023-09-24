#Storage Account

sa = {
  "storageaccount1" = {
    name                     = "shivamsa01"
    location                 = "east us"
    resource_group_name      = "shivam-rg"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    container_name           = "tfstate"
    container_access_type    = "private"
  }
}

# Keyvault

key_vault = {
  "Keyvault1" = {
    name                = "VM-Login"
    resource_group_name = "shivam-rg"
    location            = "east us"
  }
}

# Bastion

bastion = {
  "bastion01" = {
    name                  = "shivam_bastion_01"
    ip_configuration_name = "configuration"
    resource_group_name   = "shivam-rg"
    location              = "east us"
  }
}


