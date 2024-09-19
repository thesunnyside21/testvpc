resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.vpc_name}-subnet"
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.vpc.self_link
  project       = var.project_id

  secondary_ip_range {
    range_name    = "pods"
    ip_cidr_range = "172.16.0.0/20"
  }

  secondary_ip_range {
    range_name    = "services"
    ip_cidr_range = "172.16.16.0/24"
  }
}

resource "google_compute_subnetwork" "gke_subnet" {
  name          = "${var.vpc_name}-gke-subnet"
  ip_cidr_range = var.gke_subnet_cidr
  region        = var.region
  network       = google_compute_network.vpc.self_link
  project       = var.project_id

  private_ip_google_access = true
}
