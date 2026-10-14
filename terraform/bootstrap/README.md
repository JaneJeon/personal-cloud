# Bootstrap

This terraform 'root' project contains the stuff that is needed for other terraform 'root' projects to function.

For now, there is only the GCS state bucket (chosen because it's well-supported, fast, and cheap).

## Bootstrap Setup

See: https://docs.terragrunt.com/features/units/state-backend/#generating-remote-state-settings-with-terragrunt

## Bootstrap Procedure

This is already done, and there is no need to do this again.

But I'm documenting this for future sake, so that I know what to do if I later have a terraform 'root' project that defines the bucket, and I want to 'migrate' it into terragrunt and have it be used as the backend.

```sh
# First, setup the root.hcl, the project-level terragrunt.hcl, and the variable that takes in the input for the state bucket name.

# Then, migrate the state into the bucket.
terragrunt run -- init -migrate-state

# Then, verify and migrate the project to be managed by terragrunt instead.
terragrunt run -- state list    # should show the exact same thing
terragrunt run -- plan          # shouldn't be any changes
```
