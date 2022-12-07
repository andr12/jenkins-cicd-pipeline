variable "name" {
  type = string
  description = "Repository name"
  default = "my-repo"
}

variable "location" {
  type = string
  description = "location"
  default = "us-central-1"
}

variable "repository_id" {
  type = string
  description = "repository id"
  default = "petclinic-repo-halka"
}
variable "description" {
  type = string
  description = "repository description"
  default = "petclinic-repo"
}
variable "format" {
  type = string
  description = "repository format"
  default = "docker"
}