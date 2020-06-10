resource "google_compute_autoscaler" "auto" {
  name   = var.auto_name
  zone   = var.zone
  target = google_compute_instance_group_manager.manage.id

  autoscaling_policy {
    max_replicas    = 5
    min_replicas    = 1
    cooldown_period = 60

    cpu_utilization {
      target = 0.5
    }
  }
}

resource "google_compute_instance_template" "templ" {
  name           = var.templ_name
  machine_type   = "n1-standard-1"
  can_ip_forward = false

  disk {
    source_image = "debian-cloud/debian-9"
  }

  network_interface {
    subnetwork = var.subnet_name
  }
}

resource "google_compute_target_pool" "tpool" {
  name = var.tpool_name
}

resource "google_compute_instance_group_manager" "manage" {
  name = var.igm_name
  zone = var.zone

  version {
    instance_template  = google_compute_instance_template.templ.id
    name               = "primary"
  }

  target_pools       = [google_compute_target_pool.tpool.id]
  base_instance_name = "node"
}