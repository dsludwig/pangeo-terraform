output "security_group_ids" {
  value = "${concat(
    aws_security_group.master_sg.*.id,
    aws_security_group.api_sg.*.id,
    aws_security_group.node_sg.*.id
  )}"
}

output "subnet_ids" {
  value = "${aws_subnet.subnet.*.id}"
}

output "iam_arn" {
  value = "${aws_iam_role.role.arn}"
}
