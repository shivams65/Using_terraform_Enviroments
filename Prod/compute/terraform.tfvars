# Linux VM

linuxvm = {
  linuxvm01 = {
    subnetname           = "Shivam-Vnet1-subnet"
    nicname              = "vmnic01"
    resource_group_name  = "shivam-prod-rg"
    location             = "east us"
    vmname               = "linuxvm01"
    virtual_network_name = "Virtual_network_1"
  }
}

# Windows VM

windowsvm = {
  "windowsvm1" = {
    nic_name             = "windowsvm01-nic"
    name                 = "windowsvm01"
    resource_group_name  = "shivam-prod-rg"
    location             = "east us"
    virtual_network_name = "Virtual_network_2"
    subnetname           = "Shivam-Vnet2-subnet"
  }
}

# App Services

webapp = {
  "Webapp1" = {
    appserviceplanname  = "Shivam-Appserviceplan"
    web_app_name        = "Shivam-webappname01"
    resource_group_name = "shivam-prod-rg"
    location            = "east us"
  }
}


# Database

database = {
  "database01" = {
    sqlserver_name               = "shivam-sqlserver"
    version                      = "12.0"
    administrator_login          = "sqladminstrator"
    administrator_login_password = "Thisisadog11"
    minimum_tls_version          = "1.2"
    database_name                = "shivam-sqldatabase"
    resource_group_name          = "shivam-prod-rg"
    location                     = "east us"
  }
}

# Loadbalancer
rgname = "shivam-prod-rg"
vm = {
  "vm1" = {
    "name"                    = "linuxvm01"
    "backendaddresspool_name" = "linuxvm01"
    resource_group_name       = "shivam-prod-rg"
    location                  = "east us"
  },
  "vm2" = {
    "name"                    = "windowsvm01"
    "backendaddresspool_name" = "windowsvm01"
    resource_group_name       = "shivam-prod-rg"
    location                  = "east us"
  }
}