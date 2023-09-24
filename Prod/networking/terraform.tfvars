# Virtual Network

vnet = {
  "Vnet1" = {
    name                = "Virtual_network_1"
    location            = "east us"
    resource_group_name = "shivam-prod-rg"
    address_space       = ["50.0.0.0/16"]
  },
  "Vnet2" = {
    name                = "Virtual_network_2"
    location            = "east us"
    resource_group_name = "shivam-prod-rg"
    address_space       = ["60.0.0.0/16"]
  },
}

#Subnet

subnet = {
  "subnet1" = {
    name                 = "Shivam-Vnet1-subnet"
    virtual_network_name = "Virtual_network_1"
    resource_group_name  = "shivam-prod-rg"
    address_prefixes     = ["50.0.1.0/24"]
  },
  "subnet2" = {
    name                 = "Shivam-Vnet2-subnet"
    virtual_network_name = "Virtual_network_2"
    resource_group_name  = "shivam-prod-rg"
    address_prefixes     = ["60.0.1.0/24"]
  },
  "subnet3" = {
    name                 = "AzureBastionSubnet"
    virtual_network_name = "Virtual_network_1"
    resource_group_name  = "shivam-prod-rg"
    address_prefixes     = ["50.0.5.0/24"]
  }
}

# Peering

peering = {
  "Peering1" = {
    "vnet_name"            = "Virtual_network_1"
    "name"                 = "peer1to2"
    "virtual_network_name" = "Virtual_network_2"
    resource_group_name    = "shivam-prod-rg"
  },
  "Peering2" = {
    "vnet_name"            = "Virtual_network_2"
    "name"                 = "peer2to1"
    resource_group_name    = "shivam-prod-rg"
    "virtual_network_name" = "Virtual_network_1"
  }
}

#Publicip

public_ip = {
  "public_ip_01" = {
    name                = "shivampublicip01"
    location            = "east us"
    resource_group_name = "shivam-prod-rg"
  },
  "public_ip_02" = {
    name                = "PublicIPForLB"
    location            = "east us"
    resource_group_name = "shivam-prod-rg"
  }
}