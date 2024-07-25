##################################
##     VPC Network & Subnets    ##
##################################
output "network_name" {
  value       = module.networking.network_id
  description = "The ID of the network created"
}

output "subnet_name" {
  value       = module.networking.subnet_name
  description = "The name of the created subnetwork"
}

##########################
##     Cloud-Run Url    ##
##########################

output "url" {
  value       = module.cloud_run.url
  description = "Name of the cloud run service"
}
