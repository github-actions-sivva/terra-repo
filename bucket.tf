resource "google_storage_bucket" "infra_state_bucket" {
  name     = "${var.project_id}-infra-state"
  location = "us-central1"
}

