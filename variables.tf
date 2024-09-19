variable "project_id" {
  description = "The project ID to deploy to"
  type        = string
}

variable "region" {
  description = "The region to deploy to"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR for the subnet"
  type        = string
}

variable "gke_subnet_cidr" {
  description = "The CIDR for the GKE subnet"
  type        = string
}
