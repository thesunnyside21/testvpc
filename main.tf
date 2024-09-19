provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source          = "./modules/vpc"
  project_id      = var.project_id
  region          = var.region
  vpc_name        = var.vpc_name
  subnet_cidr     = var.subnet_cidr
  gke_subnet_cidr = var.gke_subnet_cidr
}

module "nat" {
  source     = "./modules/nat"
  project_id = var.project_id
  region     = var.region
  vpc_name   = var.vpc_name
  vpc_id     = module.vpc.vpc_id
}
