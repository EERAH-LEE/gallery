locals {
  org       = "tf-core"
  project   = "oidc-github"
  namespace = "${local.org}-${local.project}"

  github_repo = "bespin-multi-cloud-3-azure/*"

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
##