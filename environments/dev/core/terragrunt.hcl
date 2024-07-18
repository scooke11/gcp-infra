locals {
  mod_name = "core"
}

include "parent" {
  path   = find_in_parent_folders()
  expose = true
}

terraform {
  source = "${include.parent.locals.module_path}//${local.mod_name}"
}

inputs = {
  name = include.parent.locals.env.name
  project_id = include.parent.locals.project_id
}
