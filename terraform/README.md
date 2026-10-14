# Terraform Resources

## Note on `terraform` vs. `terragrunt`

Because I wanted a "bootstrap" pattern for the remote state, while not replicating the bucket name details, I've chosen `terragrunt`, as it has the ability to 'generate' the `backend` block and "inject" the state bucket name across each project.

See [the bootstrap README](./bootstrap/README.md) for more details.
