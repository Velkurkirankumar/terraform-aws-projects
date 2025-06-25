terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }
  required_version = ">= 1.11.0"
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Environment = "Dev"
      Owner       = "Ops"
    }
  }
}
