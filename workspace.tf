resource "tfe_workspace" "workspace" {
  name              = var.name
  organization      = var.organization
  auto_apply        = var.auto_apply
  terraform_version = "0.12.10"
  vcs_repo {
    identifier     = var.vcs_repo
    oauth_token_id = var.vcs_oauth_token_id
    branch         = var.vcs_branch
  }
}

resource "tfe_variable" "aws-access-key" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.AWS_ACCESS_KEY_ID
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "aws-secret-key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.AWS_SECRET_ACCESS_KEY
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "confirm-destroy" {
  key          = "CONFIRM_DESTROY"
  value        = var.allow_destroy
  category     = "env"
  workspace_id = tfe_workspace.workspace.id
}
