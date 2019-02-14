resource "aws_security_group" "api_sg" {
  name        = "nodes-${var.cluster_name}"
  vpc_id      = "${aws_vpc.vpc.id}"
  description = "Security group for API ELB"

  tags = "${merge(
    local.common_tags,
    map("Name", "api-${var.cluster_name}")
  )}"
}

resource "aws_security_group" "master_sg" {
  name        = "nodes-${var.cluster_name}"
  vpc_id      = "${aws_vpc.vpc.id}"
  description = "Security group for masters"

  tags = "${merge(
    local.common_tags,
    map("Name", "nodes-${var.cluster_name}")
  )}"
}

resource "aws_security_group" "node_sg" {
  name        = "nodes-${var.cluster_name}"
  vpc_id      = "${aws_vpc.vpc.id}"
  description = "Security group for nodes"

  tags = "${merge(
    local.common_tags,
    map("Name", "nodes-${var.cluster_name}")
  )}"
}

