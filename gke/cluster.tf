resource "google_container_cluster" "primary" {
  name               = "${var.cluster_name}"
  zone               = "${var.zone}"
  initial_node_count = 2

  master_auth {
    username = ""
    password = ""
  }

  node_config {
    oauth_scopes = "${var.oauth_scopes}"
  }
}

# The following outputs allow authentication and connectivity to the GKE Cluster.
output "cluster_ip" {
  value = "${google_container_cluster.primary.endpoint}"
}

output "client_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.primary.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.cluster_ca_certificate}"
}
