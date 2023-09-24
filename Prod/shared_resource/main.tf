module "storage_account" {
  source     = "github.com/shivams65/Terraform_module/Storage_account"
  sa         = var.sa
}

module "keyvault" {
  source     = "github.com/shivams65/Terraform_module/keyvault"
  key_vault  = var.key_vault
}

module "Bastion" {
  source     = "github.com/shivams65/Terraform_module/bastion"
  bastion    = var.bastion
  rgname = "shivam-prod-rg"
}
