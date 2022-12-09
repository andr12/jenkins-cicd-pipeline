variable "credentials" {
  type        = string
  description = "Location of the credential keyfile."
  default = "./or2-msq-epm-cedu-t1iylu-05293d904b28.json"
}

variable "project_id" {
  type        = string
  description = "The project ID to create the cluster."
  default = "or2-msq-epm-cedu-t1iylu"
}

variable "location" {
  type        = string
  description = "The location to create the cluster."
  default = "us-central1-a"
}

variable "region" {
  type        = string
  description = "The region to create the cluster."
  default = "us-central1"
}

variable "zones" {
  type        = list(string)
  description = "The zones to create the cluster."
  default = [ "us-central1-a", "us-central1-b", "us-central1" ]
}

variable "network" {
  type        = string
  description = "The network to create the cluster."
  default = "projects/or2-msq-epm-cedu-t1iylu/global/networks/network-epm-cedu"
}

variable "subnetwork" {
  type        = string
  description = "The subnetwork to create the cluster."
  default = "projects/or2-msq-epm-cedu-t1iylu/regions/us-central1/subnetworks/us-central1-a-network-epm-cedu-subnet"
}

variable "name" {
  type        = string
  description = "The name of the cluster."
  default = "petclinic-cluster"
}

variable "machine_type" {
  type        = string
  description = "Type of the node compute engines."
  default = "n1-standard-2"
}

variable "service_account_email" {
  type        = string
  description = "Type of the node compute engines."
  default = "mentorship-infra-sa@or2-msq-epm-cedu-t1iylu.iam.gserviceaccount.com"
}

variable "min_count" {
  type        = number
  description = "Minimum number of nodes in the NodePool. Must be >=0 and <= max_node_count."
  default = 1
}

variable "max_count" {
  type        = number
  description = "Maximum number of nodes in the NodePool. Must be >= min_node_count."
  default = 3
}

variable "disk_size_gb" {
  type        = number
  description = "Size of the node's disk."
  default = 10
}

variable "initial_node_count" {
  type        = number
  description = "The number of nodes to create in this cluster's default node pool."
  default = 3
}

variable "image" {
  description = "Image type"
  type        = string
  default     = "COS_CONTAINERD"
}

variable "nodes_number" {
  description = "Number of nodes to create"
  type        = string
  default     = 3
}
