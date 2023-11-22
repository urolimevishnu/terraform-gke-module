variable "project_id" {
  description = "The project ID of your project"
}

variable "credentials_file_path" {
  description = "Path to the GCP credentials file"
}

variable "env_name" {
  description = "The environment for the GKE cluster"
  default     = "dev"
}

