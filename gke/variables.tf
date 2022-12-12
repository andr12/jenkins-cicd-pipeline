variable "project" {
  type        = string
  description = "Project for cluster"
  default = "or2-msq-epm-cedu-t1iylu"
}

variable "location" {
  type        = string
  description = "Region for cluster"
  default = "us-central1"
}

variable "name" {
  type        = string
  description = "Name of the cluster"
  default = "petclinic-cluster"
}

# variable "service_account" {
#   description = "A custom service account for the cluster nodes to run as"
#   type        = string
#   default     = ""
# }

variable "machine_type" {
  description = "Default machine type"
  default = "n1-standard-2"
}

variable "disk_size_gb" {
  type        = number
  default     = 50
  description = "Size of the disk attached to each node, specified in GB."
}

variable "disk_type" {
  type        = string
  default     = "pd-ssd"
  description = "Type of the disk attached to each node (e.g. 'pd-standard' or 'pd-ssd')"
}

variable "node_count" {
  type        = number
  default     = 1
  description = "Number of nodes per zone"
}

variable "cluster_tags" {
  type = list
  default     = ["petclinic", "java"]
  description = "Names of the cluster tags"
}

variable "enable_autopilot" {
  type        = bool
  default     = false
  description = "Enable Autopilot for this cluster"
}

variable "node_pool_name" {
  type        = string
  description = "Name of custom node pool"
  default     = "test1"
}

variable "cluster_network" {
  type        = string
  description = "Network for cluster"
  default     = "network-epm-cedu"
}

variable "cluster_subnet" {
  type        = string
  description = "Subnet for cluster"
  default     = "us-central1-a-network-epm-cedu-subnet"
}

variable "service_account_email" {
  type        = string
  description = "Type of the node compute engines."
  default = "mentorship-infra-sa@or2-msq-epm-cedu-t1iylu.iam.gserviceaccount.com"
}
