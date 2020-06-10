output "subnet"{
	value = google_compute_subnetwork.subnetwork
	description = "the subnetwork resource created"
}
output "subnet_name"{
	value = google_compute_subnetwork.subnetwork.name
	description = "the name of the subnetwork"
}