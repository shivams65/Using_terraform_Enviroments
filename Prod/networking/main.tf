module "Virtual_network" {
  source     = "github.com/shivams65/Terraform_module/Virtualnetwork"
  vnet       = var.vnet
}
module "Subnet" {
  source     = "github.com/shivams65/Terraform_module/subnet"
  subnet     = var.subnet
  depends_on = [module.Virtual_network]
}

module "Vnet_peering" {
  source     = "github.com/shivams65/Terraform_module/Vnet_peering"
  peering    = var.peering
  depends_on = [module.Subnet]
}

module "Publicip" {
  source     = "github.com/shivams65/Terraform_module/Public_IP"
  public_ip  = var.public_ip
  depends_on = [module.Vnet_peering]
}
