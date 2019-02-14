resource "aws_subnet" "subnet" {
  count             = "${length(var.availability_zones)}"
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "${cidrsubnet(var.cidr_block, var.subnet_bits, count.index+1)}"
  availability_zone = "${var.availability_zones[count.index]}"

  tags = "${merge(
    local.common_tags,
    map(
      "Name", "${var.availability_zones[count.index]}-${var.cluster_name}",
      "SubnetType", "Public",
      "kubernetes.io/role/elb", "1"
    )
  )}"
}
