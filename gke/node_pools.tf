resource "google_container_node_pool" "core_node_pool" {
  name       = "core-pool"
  zone       = "${var.zone}"
  cluster    = "${google_container_cluster.primary.name}"
  autoscaling {
    min_node_count = "${var.min_worker_nodes}"
    max_node_count = "${var.max_worker_nodes}"
  }

  node_config {
    preemptible  = true
    oauth_scopes = "${var.oauth_scopes}"
    machine_type = "${var.core_machine_type}"
    disk_type    = "${var.core_disk_type}"
  }
}

resource "google_container_node_pool" "worker_node_pool" {
  name       = "worker-pool"
  zone       = "${var.zone}"
  cluster    = "${google_container_cluster.primary.name}"
  autoscaling {
    min_node_count = "${var.min_worker_nodes}"
    max_node_count = "${var.max_worker_nodes}"
  }

  node_config {
    preemptible  = true
    machine_type = "${var.worker_machine_type}"
    oauth_scopes = "${var.oauth_scopes}"
    disk_type    = "${var.worker_disk_type}"
  }
}

resource "google_container_node_pool" "big_node_pool" {
  name       = "big-worker-pool"
  zone       = "${var.zone}"
  cluster    = "${google_container_cluster.primary.name}"
  autoscaling {
    min_node_count = "${var.min_worker_nodes}"
    max_node_count = "${var.max_worker_nodes}"
  }

  node_config {
    preemptible     = true
    oauth_scopes    = "${var.oauth_scopes}"
    machine_type    = "${var.big_machine_type}"
    disk_type       = "${var.big_disk_type}"
  }
}
