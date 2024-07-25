
output "url" {
  value       = google_cloud_run_service.hello_world.status[0].url
  description = "Endpoint of the cloud-run service."
}

