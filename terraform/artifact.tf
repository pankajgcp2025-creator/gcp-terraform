resource "google_project_service" "artifact_registry" {
  service = "artifactregistry.googleapis.com"
  disable_on_destroy          = false
  
}
resource "google_artifact_registry_repository" "docker_repo" {
  location      = "us-central1"
  repository_id = "my-docker-repo"
  description   = "Docker images repository"
  format        = "DOCKER"

  depends_on = [
    google_project_service.artifact_registry
  ]
}

