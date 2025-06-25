variable "region" {
  type        = string
  description = "region for the current template"
  default     = "ap-south-1" # if the user does not pass the value this is default
}

variable "network_info" {
  description = "this is network info"
  type = object({
    name = string
    cidr = string
    private_subnets = list(object({
      name = string
      az   = string
      cidr = string
    }))
    public_subnets = list(object({
      name = string
      az   = string
      cidr = string
    }))
  })
  default = {
    name = "nop"
    cidr = "10.0.0.0/16"
    private_subnets = [{
      name = "db1"
      az   = "ap-south-1a"
      cidr = "10.0.2.0/24"
      }, {
      name = "db2"
      az   = "ap-south-1b"
      cidr = "10.0.3.0/24"
    }]
    public_subnets = [{
      name = "app1"
      az   = "ap-south-1a"
      cidr = "10.0.0.0/24"
      }, {
      name = "app2"
      az   = "ap-south-1b"
      cidr = "10.0.1.0/24"
    }]
  }

}
