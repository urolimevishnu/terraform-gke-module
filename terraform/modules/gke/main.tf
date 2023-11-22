provider "google" {
  credentials = file(var.credentials_file_path)
}

module "gke" {
  source       = "terraform-google-modules/kubernetes-engine/google//modules/private-cluster"
  project_id   = var.project_id
  name         = var.cluster_name
  regional     = false
  region       = var.region
  zones        = [var.zones]
  network      = module.gcp-network.network_name
  subnetwork   = module.gcp-network.subnets_names[0]
  ip_range_pods     = var.ip_range_pods_name
  ip_range_services = var.ip_range_services_name
  node_pools   = [
    {
      name           = "node-pool"
      machine_type   = "e2-standard-2"
      node_locations = var.zones
      min_count      = var.minnode
      max_count      = var.maxnode
      disk_size_gb   = var.disksize
      preemptible    = true
      auto_repair    = true
      auto_upgrade   = true
      image_type     = "UBUNTU_CONTAINERD"
      disk_type      = "pd-standard"
    },
  ]
}

