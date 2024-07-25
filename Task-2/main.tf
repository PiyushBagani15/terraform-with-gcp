##################################
##     VPC Network & Subnets    ##
##################################
module "networking" {
  source = "./modules/networking"

  project_id = var.project_id
  for_each   = { for network in var.networking : "${network.network_name}" => network }

  network_name                          = each.value.network_name
  network_description                   = each.value.description
  network_auto_create_subnetworks       = each.value.auto_create_subnetworks
  network_routing_mode                  = each.value.routing_mode
  network_delete_default_network_routes = each.value.network_delete_default_network_routes
  mtu                                   = each.value.mtu
  subnet_name                           = each.value.subnet_name
  subnet_ip_cidr                        = each.value.subnet_ip_cidr
  subnet_region                         = each.value.subnet_region
  private_ip_google_access              = each.value.private_ip_google_access
}

########################
##     Cloud-Run      ##
########################
module "cloud_run" {
  source          = "./modules/cloud-run"
  project_id      = var.project_id
  for_each        = { for service in var.cloud_run_services : "${service.name}" => service }
  name            = each.value.name
  region          = each.value.region
  location        = each.value.location
  image           = each.value.image
  percent         = each.value.percent
  latest_revision = each.value.latest_revision
}
