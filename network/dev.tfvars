region = "ap-south-1"
network_info = {
  name = "spc"
  cidr = "192.168.0.0/16"
  public_subnets = [{
    az   = "ap-south-1a"
    cidr = "192.168.0.0/24"
    name = "web1"
    }, {
    az   = "ap-south-1b"
    cidr = "192.168.1.0/24"
    name = "web2"
  }]
  private_subnets = [
    {
      az   = "ap-south-1a"
      cidr = "192.168.2.0/24"
      name = "db1"
      }, {
      az   = "ap-south-1b"
      cidr = "192.168.3.0/24"
      name = "db2"
      }, {
      az   = "ap-south-1a"
      cidr = "192.168.4.0/24"
      name = "app1"
      }, {
      az   = "ap-south-1b"
      cidr = "192.168.5.0/24"
      name = "app2"
    } , {
      az   = "ap-south-1a"
      cidr = "192.168.6.0/24"
      name = "mgmt1"
      }, {
      az   = "ap-south-1b"
      cidr = "192.168.7.0/24"
      name = "mgmt2"
    }
  ]
}
