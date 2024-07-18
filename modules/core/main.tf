module "network" {
  source  = "terraform-google-modules/network/google"
  version = "9.1.0"
  # insert the 3 required variables here
  network_name = var.name
  project_id = var.project_id
  subnets = [
    {
      subnet_name = "dmz"
      subnet_ip = "10.0.10.0/24"
      subnet_region = var.region
    },
    {
      subnet_name = "core"
      subnet_ip = "10.0.20.0/24"
      subnet_region = var.region
    },
    {
      subnet_name = "data"
      subnet_ip = "10.0.30.0/24"
      subnet_region = var.region
    },
  ]
}
