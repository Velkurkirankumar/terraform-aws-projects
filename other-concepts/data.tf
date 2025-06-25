data "aws_vpc" "other" {
    cidr_block = "192.168.0.0/16"
}

data "aws_subnets" "other" {
    filter {
      name = "vpc-id"
      values = [ data.aws_vpc.other.id ]
    }
  
}

output "other-id" {
    value = data.aws_vpc.other.id
}

output "subnet-ids" {
    value = data.aws_subnets.other.ids
  
}