output "subnetwork_name" {
  value = google_compute_subnetwork.subnetwork.name
}
output "subnetwork_cidr" {
  value = google_compute_subnetwork.subnetwork.ip_cidr_range
}
