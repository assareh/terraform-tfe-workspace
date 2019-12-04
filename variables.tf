variable "name" {
  description = "Name of the workspace"
}

variable "token" {
  description = "Terraform Cloud authentication token"
}

variable "organization" {
  description = "Name of the organization"
}

variable "auto_apply" {
  default = false
}

variable vcs_repo {}
variable vcs_branch {}
variable vcs_oauth_token_id {}

variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}

variable "allow_destroy" {
  description = "Whether to allow terraform destroy, 1 to allow, 0 to disallow"
}