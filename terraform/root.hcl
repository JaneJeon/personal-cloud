locals {
  terraform_state_bucket_name = "jane-terraform-state"
}

remote_state {
  backend = "gcs"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }

  config = {
    bucket               = local.terraform_state_bucket_name
    prefix               = path_relative_to_include()
    skip_bucket_creation = true
  }
}
