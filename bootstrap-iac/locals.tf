locals {
  infra_svc_roles = [
    "roles/container.admin",
    "roles/cloudsql.admin"
  ]

  deploy_svc_roles = [
    "roles/container.developer"
  ]
}
