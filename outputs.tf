output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The ID of the VPC"
}

output "subnet_id" {
  value       = module.vpc.subnet_id
  description = "The ID of the subnet"
}

output "gke_subnet_id" {
  value       = module.vpc.gke_subnet_id
  description = "The ID of the GKE subnet"
}

output "nat_ip" {
  value       = module.nat.nat_ip
  description = "The NAT IP addresses"
}
