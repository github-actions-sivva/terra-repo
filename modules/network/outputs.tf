output "netwotk_name" {
  description = "The name of the VPC Networkd"
  value       = google_compute_network.tf_vpc_network.name
}
