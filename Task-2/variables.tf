##################################
##     VPC Network & Subnets    ##
##################################

variable "project_id" {
  description = "The GCP project id"
  type        = string
}

variable "networking" {
  description = "A list of network configuration"
  type = list(object({
    network_name                          = string
    description                           = string
    auto_create_subnetworks               = bool
    routing_mode                          = string
    network_delete_default_network_routes = bool
    mtu                                   = number
    subnet_name                           = string
    subnet_ip_cidr                        = string
    subnet_region                         = string
    private_ip_google_access              = bool
  }))

}

######################
##     Cloud Run    ##
######################

variable "cloud_run_services" {
  description = "A list of Cloud Run service configuration"
  type = list(object({
    name            = string
    region          = string
    location        = string
    image           = string
    percent         = number
    latest_revision = bool
  }))

}