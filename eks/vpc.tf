resource "aws_vpc" "vpc" {
  cidr_block           = "${var.cidr_block}"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = "${merge(
    local.common_tags,
    map("Name", "${var.cluster_name}")
  )}"
}

resource "aws_internet_gateway" "ig" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags = "${merge(
    local.common_tags,
    map("Name", "${var.cluster_name}")
  )}"
}
