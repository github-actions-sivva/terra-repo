
resource "google_service_account" "tf_infra_svc_account" {
  account_id   = var.infra_account_id
  display_name = "Infrastructure Service Account"
}

resource "google_service_account" "tf_deploy_svc_account" {
  account_id   = var.app_deploy_account_id
  display_name = "Deployment Service Account"
}



resource "google_project_iam_member" "infra_svc_roles_binding" {
  for_each = toset(local.infra_svc_roles)
  project  = var.project_id
  role     = each.key
  member   = "serviceAccount:${google_service_account.tf_infra_svc_account.email}"
}

resource "google_project_iam_member" "deploy_svc_roles_binding" {
  for_each = toset(local.deploy_svc_roles)
  project  = var.project_id
  role     = each.key
  member   = "serviceAccount:${google_service_account.tf_deploy_svc_account.email}"
}
