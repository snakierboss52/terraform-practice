module "virtual_machine" {
  source = "./modules"
  region = var.region
  ami = var.ami
  instance_type = var.instance_type
  name = var.name
  environment = var.environment
  security_group = var.security_group
}