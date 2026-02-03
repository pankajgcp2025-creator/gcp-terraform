terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project     = "lucid-mariner-480618-c7"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "key.json"
}
