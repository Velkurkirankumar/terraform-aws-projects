terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
  
  required_version = ">= 1.11.0"
}

provider "aws" {
  region = "ap-south-1"
}