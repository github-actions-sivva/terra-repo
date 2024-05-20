terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.28.0"
    }
  } /*
  backend "gcs" {
    bucket = "quantum-weft-420714-gmek"
    prefix = "terraform/state"
  }*/
}

provider "google" {
  project = var.project_id
  region  = var.region
  #credentials = file("creds.json")
}

