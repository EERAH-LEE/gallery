locals {
  org       = "tf-core"
  project   = "lab01"
  namespace = "${local.org}-${local.project}"

  github_repo = "k0-zzang/gallery-k0"

  iamrole = {
    name       = "pky"
    policy_arn = data.aws_iam_policy.admin_access.arn
  }

  iamoidcp = {
    name            = "pky"
    url             = "https://token.actions.githubusercontent.com"
    client_id_list  = ["sts.amazonaws.com"]
    thumbprint_list = ["ffffffffffffffffffffffffffffffffffffffff"]
  }
}