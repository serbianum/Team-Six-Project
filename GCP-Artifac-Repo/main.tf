resource "google_artifact_registry_repository" "my-repo" {
  location      = "us-west2"
  repository_id = "team6-redash-docker"
  description   = "Team6 docker repository"
  format        = "DOCKER"
}