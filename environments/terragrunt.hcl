locals {
  env_file = read_terragrunt_config("${get_original_terragrunt_dir()}/../env.hcl", {locals = {}})
  env = local.env_file.locals
  module_path = "${get_repo_root()}/modules"
  project_id = run_cmd("gcloud", "config", "get", "project")
}

# TODO
# remote_state {}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents  = <<EOT
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.38.0"
    }
  }
}

provider "google" {
  project = "${local.project_id}" 
}
EOT
}
