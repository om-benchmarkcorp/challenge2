output "network"{
	value = google_compute_network.vpc_network
	description = "VPC resource being created"
}
output "network_name"{
	value = google_compute_network.vpc_network.name
	description= "name of VPC network being created"
}