# Output for VPC Name
output "vpc_name" {
  description = "The name of the VPC created."
  value       = module.vpc.vpc_name
}

# Output for Subnetwork Name
output "subnetwork_name" {
  description = "The name of the subnetwork created."
  value       = module.subnetwork.subnetwork_name
}

# Output for Firewall Name (IAP)
output "iap_firewall_name" {
  description = "The name of the IAP firewall rule."
  value       = module.firewall.firewallname
}

# Output for ICMP Firewall Name
output "icmp_firewall_name" {
  description = "The name of the ICMP firewall rule."
  value       = module.icmp.firewallname
}

# Output for Router Name
output "router_name" {
  description = "The name of the Cloud Router."
  value       = module.router.router_name
}

# Output for Cloud NAT Name
output "cloudnat_name" {
  description = "The name of the Cloud NAT."
  value       = module.cloudnat.natname
}

# Output for VM Name
output "vm_name" {
  description = "The name of the virtual machine."
  value       = module.vm.name
}

# Output for VM Zone
output "vm_zone" {
  description = "The zone where the VM is deployed."
  value       = module.vm.vm_zone
}

# Output for VM Image
output "vm_machinetype" {
  description = "The machine type used for the VM."
  value       = module.vm.machine_type
}

# Output for VM Network
output "vm_network" {
  description = "The network the VM is connected to."
  value       = module.vm.public_ip
}

