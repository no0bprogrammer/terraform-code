module "vpc" {
  source = "/home/ankitkm2241/modules/vpc"
  name = "prodvpc"
  routing_mode = "REGIONAL"
}
module "subnetwork" {
  source = "/home/ankitkm2241/modules/subnetwork"
  name = "subnet1"
  network = module.vpc.vpc_name
  ip_cidr_range = "10.0.0.0/24"
  region = "asia-south2"
}
module "firewall" {
  source = "/home/ankitkm2241/modules/firewall"
  name = "iap"
  network = module.vpc.vpc_name
  protocol = "tcp"
  ports = ["22" ,"3389"]
  source_ranges = ["35.235.240.0/20"]
}
module "icmp" {
  source = "/home/ankitkm2241/modules/firewall"
  name = "icmp"
  network = module.vpc.vpc_name
  protocol = "tcp"
  ports = ["80","443"]
  source_ranges = ["0.0.0.0/0"]
}
module "router" {
  source = "/home/ankitkm2241/modules/router"
  name = "router1"
  network = module.vpc.vpc_name
  region = "asia-south2"
}


module "cloudnat" {
  source = "/home/ankitkm2241/modules/cloudnat"
  name = "cloudnat"
  router = module.router.router_name
  region = "asia-south2" 
}

module "vm" {
  source = "/home/ankitkm2241/modules/vm"
  name = "vm1"
  machine_type = "e2-medium"
  zone = "asia-south2-a"
  image = "ubuntu-2004-focal-v20210325"
  size = 10
  network = module.vpc.vpc_name
  subnetwork = module.subnetwork.subnetwork_name
  metadata_startup_script = <<-EOT
    #!/bin/bash
    # Update packages
    apt-get update -y
    
    # Install Apache2
    apt-get install apache2 -y
    
    # Enable and start Apache service
    systemctl enable apache2
    systemctl start apache2
    
    # Allow Apache service through the firewall (optional)
    ufw allow 'Apache Full'
    
    # Restart Apache in case needed
    systemctl restart apache2
  EOT
}
