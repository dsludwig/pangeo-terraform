variable "cluster_name" {
  default = "aws-example-pangeo-io"
  type = "string"
}

variable "region" {
  default = "us-east-1"
  type = "string"
}

variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
  type = "list"
}

variable "cidr_block" {
  default = "172.20.0.0/16"
}

variable "subnet_bits" {
  default = "3"
}

locals {
  common_tags = {
    KubernetesCluster = "${var.cluster_name}"
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
  }
}
