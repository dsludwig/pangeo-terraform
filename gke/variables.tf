variable "region" {
  default = "us-central1"
  type = "string"
}

variable "zone" {
  default = "us-central1-b"
  type = "string"
}

variable "project" {
  default = "pangeo-181919"
  type = "string"
}

variable "cluster_name" {
  default = "example-pangeo-io-jhub"
  type = "string"
}

variable "oauth_scopes" {
  default = [
      "compute-rw",
      "storage-ro",
      "logging-write",
      "monitoring",
      # "https://www.googleapis.com/auth/compute",
      # "https://www.googleapis.com/auth/devstorage.read_only",
      # "https://www.googleapis.com/auth/logging.write",
      # "https://www.googleapis.com/auth/monitoring",
  ]
  type = "list"
}

variable "master_machine_type" {
  default = "n1-standard-2"
  type = "string"
}

variable "core_machine_type" {
  default = "n1-highmem-4"
  type = "string"
}

variable "core_disk_type" {
  default = "pd-standard"
  type = "string"
}

variable "worker_machine_type" {
  default = "n1-standard-4"
  type = "string"
}

variable "worker_disk_type" {
  default = "pd-ssd"
  type = "string"
}

variable "big_machine_type" {
  default = "n1-highmem-4"
  type = "string"
}

variable "big_disk_type" {
  default = "pd-ssd"
  type = "string"
}

variable "min_worker_nodes" {
  default = "0"
  type = "string"
}

variable "max_worker_nodes" {
  default = "10"
  type = "string"
}
