locals {
  org       = "tf-core"
  project   = "gallery"
  namespace = "${local.org}-${local.project}"

  vpc = {
    name = "main3"

    cidr_block           = "10.0.0.0/16"
    enable_dns_support   = true
    enable_dns_hostnames = true
  }
}