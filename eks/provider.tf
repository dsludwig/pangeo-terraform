terraform = {
  required_version = ">= 0.9.3"
}

provider "aws" {
  region = "${var.region}"
}
