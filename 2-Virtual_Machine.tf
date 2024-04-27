resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium" 
  zone         = "us-central1-a"
  can_ip_forward = "false"
  description = "This is our Virtual Machine"

  tags = ["allow-http"] #FIREWALL

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

#   labels {
#     name = "test"
#     machine_type = "e2-medium"
#   }

  network_interface {
    network = "default"
    # network = "auto-romulus82vpc-tf"
    # subnetwork = "sub-romulus82vpc-sg"
  }

  metadata = {
    size = "20"
    foo = "bar"
  }

  metadata_startup_script = ""

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

}

# machine_type = "n2=standard-2"