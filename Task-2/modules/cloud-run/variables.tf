variable "project_id" {
  description = "The project ID"
  type        = string
}

variable "region" {
  description = "The region in which resources will be created"
  type        = string
}

variable "location" {
  description = "The default location"
  type        = string
  default     = "us-central1"
}

variable "name" {
  description = "The name of the Cloud Run service."
  type        = string
}

variable "image" {
  description = "The container image to deploy."
  type        = string
}

variable "percent" {
  description = "The percentage of traffic to redirect to this particular revision."
  type        = number
  default     = 100
}

variable "latest_revision" {
  description = "Whether to send traffic to the latest revision or not."
  type        = bool
  default     = true
}
