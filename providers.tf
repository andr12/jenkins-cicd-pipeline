provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials)
}

provider "google-beta" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials)
}

terraform {
  required_providers {
    google = {
      version = "> 3.83.0"
    }
    google-beta = {
      version = "> 3.83.0"
    }
  }
}