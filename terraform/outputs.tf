output "cluster_name" {
  description = "Cluster name"
  value       = module.gke.name
}

output "network_name" {
  description = "Network name"
  value       = module.gcp-network.network_name
}

output "subnetwork_name" {
  description = "Subnetwork name"
  value       = module.gcp-network.subnets_names[0]
}

