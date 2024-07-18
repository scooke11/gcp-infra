variable "name" {
  description = "Name to use for module resources" 
  type = string
}

variable "project_id" {
  description = "Id of the project to deploy on"
  type = string
}

variable "region" {
  description = "Gcloud region to use for subnets"
  type = string
  default = "us-east5"
}
