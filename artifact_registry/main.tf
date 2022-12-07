resource "google_artifact_registry_repository" "my-repo" {
  provider = google-beta
  
  location = var.location
  repository_id = var.repository_id
  description = var.description
  format = var.format
  }