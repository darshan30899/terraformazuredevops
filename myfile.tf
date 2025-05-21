terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  
  # token is automatically read from the GITHUB_TOKEN env variable
}



resource "github_repository" "my_repo" {
  name        = "terraform-repo-testing"
  description = "Created with Terraform"
  visibility  = "private"  # or "public"
  auto_init   = true       # initializes the repo with a README
}
