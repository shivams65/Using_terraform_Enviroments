# Linux VM

variable "linuxvm" {
  type = map(any)
}

# Windows VM

variable "windowsvm" {
  type = map(any)
}

# App Services

variable "webapp" {
  type = map(any)
}


# Database

variable "database" {
  type = map(any)
}

#Load Balancer

variable "vm" {
  type = map(any)
}

variable "rgname" {
  type = string
}