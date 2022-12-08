variable "credentials" {
  type        = string
  description = "Location of the credential keyfile."
  default     = "/home/jenkins/workspace/or2-msq-epm-cedu-t1iylu-05293d904b28.json"
}

variable "project_id" {
  type        = string
  description = "The project ID to create the cluster."
  default     = "or2-msq-epm-cedu-t1iylu"
}

variable "region" {
  type        = string
  description = "The region to create the cluster."
  default     = "us-central1"
}