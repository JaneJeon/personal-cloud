terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.46.1"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region

  # For auth, rely on `gcloud` CLI being installed and configured locally,
  # and on the OIDC token for GitHub Actions.
}
