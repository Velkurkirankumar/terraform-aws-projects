variable "region" {
  type    = string
  default = "ap-south-1"
}



variable "network_info" {
  type = object({
    name                 = string
    cidr_block           = string
    enable_dns_hostnames = bool
  })
  default = {
    cidr_block           = "10.113.0.0/16"
    name                 = "ntier"
    enable_dns_hostnames = true
  }

}

variable "subnets_info" {
  type = list(object({
    name              = string
    cidr_block        = string
    availability_zone = string
  }))
  default = [{
    name              = "web1"
    cidr_block        = "10.113.0.0/24"
    availability_zone = "ap-south-1a"
    }, {
    name              = "web2"
    cidr_block        = "10.113.1.0/24"
    availability_zone = "ap-south-1b"
  }]

}

variable "web_security_group" {
  type = object({
    name        = string
    description = string
    ingress_rules = list(object({
      name        = string
      cidr_ipv4   = string
      description = string
      from_port   = number
      to_port     = number
      ip_protocol = string
    }))
    egress_rules = list(object({
      name        = string
      cidr_ipv4   = string
      description = string
      from_port   = number
      to_port     = number
      ip_protocol = string
    }))
  })
}


variable "app_security_group" {
  type = object({
    name        = string
    description = string
    ingress_rules = list(object({
      name        = string
      cidr_ipv4   = string
      description = string
      from_port   = number
      to_port     = number
      ip_protocol = string
    }))
    egress_rules = list(object({
      name        = string
      cidr_ipv4   = string
      description = string
      from_port   = number
      to_port     = number
      ip_protocol = string
    }))
  })
}


variable "db_security_group" {
  type = object({
    name        = string
    description = string
    ingress_rules = list(object({
      name        = string
      cidr_ipv4   = string
      description = string
      from_port   = number
      to_port     = number
      ip_protocol = string
    }))
    egress_rules = list(object({
      name        = string
      cidr_ipv4   = string
      description = string
      from_port   = number
      to_port     = number
      ip_protocol = string
    }))
  })
}


variable "build_id" {
  type    = string
  default = "1"

}
