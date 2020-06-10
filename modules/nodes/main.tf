resource "google_compute_instance" "node"{
  name = var.node_name
  zone = "us-west1-c"
  machine_type = "n1-standard-1"

  boot_disk{
	initialize_params{
		image = "debian-cloud/debian-9"
	  }
  }

  network_interface{
  subnetwork = var.subnet_name
  }
}