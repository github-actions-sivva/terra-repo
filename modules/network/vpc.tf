# Create a VPC Network

resource "google_compute_network" "tf_vpc_network" {
  auto_create_subnetworks = false
  name                    = "${var.app_name}-${var.environment}-vpc"
}


