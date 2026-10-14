variable "terraform_state_bucket_name" {
  type    = string
  default = "jane-terraform-state"
}

resource "google_storage_bucket" "terraform_state" {
  name          = var.terraform_state_bucket_name
  location      = var.gcp_region
  storage_class = "STANDARD"
  force_destroy = false

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      num_newer_versions         = 3
      days_since_noncurrent_time = 7
    }

    action {
      type = "Delete"
    }
  }
}
