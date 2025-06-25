resource "aws_vpc" "nop" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    "Name" = "nop-vpc-dev"
  }
  provider = aws.primary
}

resource "aws_vpc" "nop-secondary" {
  cidr_block           = "10.11.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    "Name" = "nop-vpc-dev"
  }
  provider = aws.secondary
}



