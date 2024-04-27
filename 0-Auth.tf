terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = "first-class5project"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "first-class5project-38f8bed18b96.json"
}
