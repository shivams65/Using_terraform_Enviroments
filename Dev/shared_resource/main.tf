module "storage_account" {
  source     = "github.com/shivams65/Terraform_module/Storage_account"
  sa         = var.sa
}

module "keyvault" {
  source     = "github.com/shivams65/Terraform_module/keyvault"
  key_vault  = var.key_vault
  depends_on = [ module.storage_account ]
    }

module "Bastion" {
  source     = "github.com/shivams65/Terraform_module/bastion"
  bastion    = var.bastion
  rgname = "shivam-rg"
  depends_on = [ module.keyvault ]
}
