output "public_ip" {
  value = google_compute_instance.vminstance.network_interface[0].network_ip
}
output "name" {
  value = google_compute_instance.vminstance.name
}
output "vm_zone" {
  value = google_compute_instance.vminstance.zone
}
output "machine_type" {
  value = google_compute_instance.vminstance.machine_type
}