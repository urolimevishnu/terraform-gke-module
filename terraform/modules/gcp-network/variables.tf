variable "project_id" {
  description = "The project ID of your project"
}

variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "dev-network"
}

variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "dev-subnet"
}

variable "ip_range_pods_name" {
  description = "The secondary IP range to use for pods"
  default     = "ip-dev-pod"
}

variable "ip_range_services_name" {
  description = "The secondary IP range to use for services"
  default     = "ip-dev-services"
}

variable "region" {
  description = "The region to host the subnetwork in"
  default     = "us-central1"
}

variable "env_name" {
  description = "The environment for the GCP network"
  default     = "dev"
}

variable "credentials_file_path" {
  description = "Path to the GCP credentials file"
}

