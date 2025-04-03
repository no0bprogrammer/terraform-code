resource "google_compute_router" "router" {
  name    = var.name
  network = var.network
  region = var.region
}