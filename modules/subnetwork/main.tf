resource "google_compute_subnetwork" "subnetwork"{
    name = var.subnet_name
    ip_cidr_range = var.ip_cidr_range
    region = var.region
    network = var.network_name
}