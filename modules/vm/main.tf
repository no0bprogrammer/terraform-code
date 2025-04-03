resource "google_compute_instance" "vminstance" {
  name = var.name
  machine_type = var.machine_type
  zone = var.zone
  boot_disk {
    initialize_params {
      image = var.image
      size = var.size
    }
  }
  network_interface {
    network = var.network
    subnetwork = var.subnetwork
  }
  metadata_startup_script = var.metadata_startup_script
}
