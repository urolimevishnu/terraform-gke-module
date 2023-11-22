output "kubeconfig_raw" {
  description = "Raw kubeconfig content"
  value       = module.gke_auth.kubeconfig_raw
}

