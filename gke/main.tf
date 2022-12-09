resource "google_container_cluster" "primary" {
  name                     = var.name
  project                  = var.project_id
  location   = var.zones
  network                    = var.network
  subnetwork                 = var.subnetwork
  remove_default_node_pool = true
  initial_node_count       = 1
  }

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "default-node-pool"
  location   = var.zones
  cluster    = google_container_cluster.primary.name
  min_count                 = var.min_count
      max_count                 = var.max_count
      local_ssd_count           = var.disk_size_gb
      disk_type                 = "pd-standard"
      image_type                = "COS_CONTAINERD"
      auto_repair               = true
      auto_upgrade              = true
      preemptible               = false
      initial_node_count        = var.initial_node_count

  node_config {
    preemptible     = true
    machine_type    = var.machine_type
    auto_repair               = true
    auto_upgrade              = true
    service_account = var.service_account_email
  }
}