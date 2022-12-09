resource "google_container_cluster" "primary" {
  name                     = var.name
  project                  = var.project_id
  location   = var.location
  network                    = var.network
  subnetwork                 = var.subnetwork
  remove_default_node_pool = true
  initial_node_count       = 1
} 
 
resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "default-node-pool"
  location   = var.cluster_location
  cluster    = google_container_cluster.primary.name
  node_count = var.nodes_number

  node_config {
    preemptible     = true
    machine_type    = var.machine_type
    service_account = var.service_account_email
  }
}