include "root" {
  path   = find_in_parent_folders("root.hcl")
  expose = true
}

inputs = {
  terraform_state_bucket_name = include.root.locals.terraform_state_bucket_name
}
