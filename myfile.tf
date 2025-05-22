terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  # The GitHub token will be automatically read from the GITHUB_TOKEN environment variable
}

resource "github_repository" "my_repo" {
  name        = "terraform-repo-testing"
  description = "Repository created with Terraform"
  visibility  = "public"     # Change to "public" if you want it public
  auto_init   = true          # Initializes the repo with a README
}
