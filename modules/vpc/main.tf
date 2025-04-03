resource "google_compute_network" "vpc_network" {
  name                    = var.name
  routing_mode            = var.routing_mode
  auto_create_subnetworks = false
}