terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

variable "github_token" {
  type      = string
  sensitive = true
}

variable "github_owner" {
  type    = string
  default = "darshan30899"  # Replace with your GitHub username or org
}

resource "github_repository" "my_repo" {
  name        = "terraform-repo-testing"
  description = "Created with Terraform"
  visibility  = "private"  # or "public"
  auto_init   = true       # initializes the repo with a README
}
