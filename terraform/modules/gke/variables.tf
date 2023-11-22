variable "project_id" {
  description = "The project ID of your project"
}

variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "dev-task-cluster"
}

variable "env_name" {
  description = "The environment for the GKE cluster"
  default     = "dev"
}

variable "region" {
  description = "The region to host the cluster in"
  default     = "us-central1"
}

variable "zones" {
  description = "Cluster zone"
  default     = "us-central1-c"
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

variable "service_account_id" {
  description = "The ID of the service account of GCP"
  default     = "serviceaccount-id"
}

variable "cpus" {
  description = "Number of CPUs"
  default     = "4"
}

variable "minnode" {
  description = "Minimum number of node pools"
  default     = 1
}

variable "maxnode" {
  description = "Maximum number of node pools"
  default     = 4
}

variable "disksize" {
  description = "Disk Size in GB"
  default     = 30
}

variable "credentials_file_path" {
  description = "Path to the GCP credentials file"
}

