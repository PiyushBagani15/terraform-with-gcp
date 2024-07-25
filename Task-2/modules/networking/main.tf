##########################
##     VPC Network      ##
##########################
resource "google_compute_network" "network" {
  project                         = var.project_id
  name                            = var.network_name
  description                     = var.network_description
  auto_create_subnetworks         = var.network_auto_create_subnetworks
  mtu                             = var.mtu
  routing_mode                    = var.network_routing_mode
  delete_default_routes_on_create = var.network_delete_default_network_routes
}

#########################
#       Subnets         #
#########################
resource "google_compute_subnetwork" "subnetwork" {
  project                  = var.project_id
  name                     = var.subnet_name
  ip_cidr_range            = var.subnet_ip_cidr
  region                   = var.subnet_region
  network                  = google_compute_network.network.id
  secondary_ip_range       = var.secondary_ip_range
  private_ip_google_access = var.private_ip_google_access
}

