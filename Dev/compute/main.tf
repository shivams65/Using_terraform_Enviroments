module "Linux_VM" {
  source     = "github.com/shivams65/Terraform_module/Linux_VM"
  linuxvm    = var.linuxvm
}

module "Windows_VM" {
  source     = "github.com/shivams65/Terraform_module/Window_VM"
  windowsvm  = var.windowsvm
  depends_on = [ module.Linux_VM ]
}

module "loadbalancer" {
  source     = "github.com/shivams65/Terraform_module/loadbalancer"
  vm         = var.vm
   rgname = "shivam-rg"
  depends_on = [ module.Windows_VM ]
}

module "App_services" {
  source     = "github.com/shivams65/Terraform_module/app_services"
  webapp     = var.webapp
  depends_on = [ module.loadbalancer ]
}

module "Database" {
  source     = "github.com/shivams65/Terraform_module/database"
  database   = var.database
  depends_on = [ module.App_services ]
}