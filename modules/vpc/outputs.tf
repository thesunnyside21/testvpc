output "vpc_id" {
  value       = google_compute_network.vpc.id
  description = "The ID of the VPC"
}

output "subnet_id" {
  value       = google_compute_subnetwork.subnet.id
  description = "The ID of the subnet"
}

output "gke_subnet_id" {
  value       = google_compute_subnetwork.gke_subnet.id
  description = "The ID of the GKE subnet"
}
