terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  backend "local" {}  # You can switch to GCS later for remote state
}

provider "google" {
  project = var.project_id
  region  = var.region
}
