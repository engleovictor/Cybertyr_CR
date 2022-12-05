terraform {
  required_providers {
    aws = {
      version = "~> 4.0"
    }

  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASMPHVMNYTTU4NKEB"
  secret_key  = "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"
}