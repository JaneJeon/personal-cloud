variable "gcp_project_id" {
  type = string
}

variable "gcp_region" {
  type = string
  # One of the 'cheaper' regions.
  # And, because GitHub runners are hosted across different regions in the US,
  # having a region close to the runners (wherever they're spun up) means less network latency.
  default = "us-central1"
}
