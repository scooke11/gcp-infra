variable "gke_num_nodes" {
  description = "number of gke nodes"
  type = number
  default     = 2
}

variable "project_id" {
  description = "project id"
  type = string
}

variable "region" {
  description = "region"
  type = string
  default = "us-east5"
}

variable "network_name" {
  description = "network name"
  type = string
}

variable "subnet_name" {
  description = "subnetwork name"
  type = string
}
