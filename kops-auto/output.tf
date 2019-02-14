output "repository_url" {
  value = "${aws_ecr_repository.cluster-aws-pangeo-io-k8s-local.repository_url}"
}

output "cluster_name" {
  value = "cluster.aws.pangeo.io.k8s.local"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-east-1a-masters-cluster-aws-pangeo-io-k8s-local.id}", "${aws_autoscaling_group.master-us-east-1c-masters-cluster-aws-pangeo-io-k8s-local.id}", "${aws_autoscaling_group.master-us-east-1d-masters-cluster-aws-pangeo-io-k8s-local.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-cluster-aws-pangeo-io-k8s-local.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-cluster-aws-pangeo-io-k8s-local.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-cluster-aws-pangeo-io-k8s-local.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-cluster-aws-pangeo-io-k8s-local.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-cluster-aws-pangeo-io-k8s-local.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-east-1a-cluster-aws-pangeo-io-k8s-local.id}", "${aws_subnet.us-east-1c-cluster-aws-pangeo-io-k8s-local.id}", "${aws_subnet.us-east-1d-cluster-aws-pangeo-io-k8s-local.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-cluster-aws-pangeo-io-k8s-local.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-cluster-aws-pangeo-io-k8s-local.name}"
}

output "region" {
  value = "us-east-1"
}

output "route_table_public_id" {
  value = "${aws_route_table.cluster-aws-pangeo-io-k8s-local.id}"
}

output "subnet_us-east-1a_id" {
  value = "${aws_subnet.us-east-1a-cluster-aws-pangeo-io-k8s-local.id}"
}

output "subnet_us-east-1c_id" {
  value = "${aws_subnet.us-east-1c-cluster-aws-pangeo-io-k8s-local.id}"
}

output "subnet_us-east-1d_id" {
  value = "${aws_subnet.us-east-1d-cluster-aws-pangeo-io-k8s-local.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.cluster-aws-pangeo-io-k8s-local.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.cluster-aws-pangeo-io-k8s-local.id}"
}

