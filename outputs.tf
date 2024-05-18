output "infra_svc_account_email" {
  description = "Email of the Infrastructure Service Account"
  value       = google_service_account.tf_infra_svc_account.email
}

output "deploy_svc_account_email" {
  description = "Email of the Deployment Service Account"
  value       = google_service_account.tf_deploy_svc_account.email
}

output "Infra_bucket_name" {
  value = google_storage_bucket.infra_state_bucket.name
}
