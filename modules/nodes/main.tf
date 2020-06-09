resource "google_compute_instance" "node01"{
  name = "node01"
  zone = "us-central1-a"
  machine_type = "n1-standard-1"

  boot_disk{
	initialize_params{
		image = "debian-cloud/debian-9"
	}
  }

  network_interface{
	network = module.vpc.network_name
	subnetwork = module.subnetwork.subet_name
  }
}