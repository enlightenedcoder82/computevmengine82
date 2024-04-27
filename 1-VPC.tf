# terraform {
#   required_providers {
#     google = {
#       source = "hashicorp/google"
#       version = "5.25.0"
#     }
#   }
# }

# provider "google" {
#   # Configuration options
#   region = "us-central1"
#   project = "thisismustafar"
#   zone = "us-central1-a"
#   credentials = "thisismustafar-98bc057b15db.json"

# }
resource "google_storage_bucket" "romulus82" {
  name          = "romulus82"
  location      = "us-central1"
  force_destroy = true

}


resource "google_compute_network" "auto-romulus82vpc-tf" {
  name                    = "auto-romulus82vpc-tf"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "sub-romulus82vpc-sg" {
  name          = "sub-romulus82vpc-sg"
  network       = google_compute_network.auto-romulus82vpc-tf.id
  ip_cidr_range = "10.182.2.0/24"
  region        = "asia-northeast1"
}


#resource "google_compute_network" "custom-vpc-tf" {
#name = "custom-vpc-tf"
#auto_create_subnetworks = false
#}

output "auto" {
  value = google_compute_network.auto-romulus82vpc-tf.id
}

#output "custom" {
#  value = google_compute_network.custom-vpc-tf.id
#}