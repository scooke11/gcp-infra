locals {
  # Anything defined here automatically becomes accessible to child terragrunt files.
  # Access them as include.parent.locals.env.[field]
  name = basename(get_terragrunt_dir())
}
