module "vpc_network" {
  source      = "../modules/network"
  app_name    = var.app_name
  environment = var.environment
}
