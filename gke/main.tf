resource "google_container_cluster" "cluster" {
  project  = var.project
  location = var.location
  name     = var.name
  network  = var.cluster_network
  subnetwork = var.cluster_subnet
  enable_autopilot = var.enable_autopilot ? true : null
  remove_default_node_pool = var.enable_autopilot ? null : true
  initial_node_count = 1
}

resource "google_container_node_pool" "cluster-pool-1" {
  count = var.enable_autopilot ? 0 : 1
  project  = var.project
  location = var.location
  name    = var.node_pool_name
  cluster = google_container_cluster.cluster.name
  node_count = var.node_count
  # initial_node_count = var.autoscaling != null ? 1 : null
  node_config {
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
    disk_type = var.disk_type
    service_account_email = var.service_account_email

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]

    tags = var.cluster_tags
  }
}