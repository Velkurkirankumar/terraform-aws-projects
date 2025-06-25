terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
  backend "s3" {
    bucket       = "lttf-centralstate"
    key          = "activities/activity-2"
    region       = "ap-south-1"
    use_lockfile = true

  }
  required_version = ">= 1.11.0"
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      "Env" = terraform.workspace
    }
  }
}