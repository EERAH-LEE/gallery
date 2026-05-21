locals {
  org         = "tf-user"
  project     = "lab23"
  environment = var.env

  namespace = "${local.org}-${local.project}-${local.environment}"

  region = "ap-northeast-2"

  infra = {
    lb = {
      listener_port = var.infra_lb_listener_port
      target_group_port = var.infra_target_group_port
    }

    lt = {
      service_port  = var.infra_lt_service_port
      instance_type = var.infra_lt_instance_type
    }

    asg = {
      deploy_version   = var.infra_asg_deploy_version
      min_size         = var.infra_asg_min_size
      max_size         = var.infra_asg_max_size
      desired_capacity = var.infra_asg_desired_capacity
    }
  }
}

