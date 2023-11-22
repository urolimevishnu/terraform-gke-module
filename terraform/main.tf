provider "google" {
  credentials = file(var.credentials_file_path)
}

module "gcp-network" {
  source = "./modules/gcp-network"
  project_id               = var.project_id
  network                  = var.network
  subnetwork               = var.subnetwork
  ip_range_pods_name       = var.ip_range_pods_name
  ip_range_services_name   = var.ip_range_services_name
  region                   = var.region
  env_name                 = var.env_name
  credentials_file_path    = var.credentials_file_path
}

module "gke" {
  source                   = "./modules/gke"
  project_id               = var.project_id
  cluster_name             = var.cluster_name
  env_name                 = var.env_name
  region                   = var.region
  zones                    = var.zones
  network                  = module.gcp-network.network_name
  subnetwork               = module.gcp-network.subnets_names[0]
  ip_range_pods_name       = var.ip_range_pods_name
  ip_range_services_name   = var.ip_range_services_name
  minnode                  = var.minnode
  maxnode                  = var.maxnode
  disksize                 = var.disksize
  credentials_file_path    = var.credentials_file_path
}

module "gke-auth" {
  source                   = "./modules/gke-auth"
  project_id               = var.project_id
  credentials_file_path    = var.credentials_file_path
  env_name                 = var.env_name
}

resource "local_file" "kubeconfig" {
  content  = module.gke-auth.kubeconfig_raw
  filename = "kubeconfig-${var.env_name}"
}

