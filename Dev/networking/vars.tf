# Virtual Network

variable "vnet" {
  type = map(any)
}

# Subnet

variable "subnet" {
  type = map(any)
}

# Vnet Peering

variable "peering" {
  type = map(any)
}

# public IP

variable "public_ip" {
  type = map(any)
}
