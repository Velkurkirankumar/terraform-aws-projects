region = "us-west-2"
network_info = {
  cidr_block           = "10.112.0.0/16"
  enable_dns_hostnames = true
  name                 = "ntier-qa"
}

subnets_info = [{
  name              = "web1"
  cidr_block        = "10.112.0.0/24"
  availability_zone = "us-west-2a"
  }, {
  name              = "web2"
  cidr_block        = "10.112.1.0/24"
  availability_zone = "us-west-2b"
  }, {
  name              = "app1"
  cidr_block        = "10.112.2.0/24"
  availability_zone = "us-west-2a"
  }, {
  name              = "app2"
  cidr_block        = "10.112.3.0/24"
  availability_zone = "us-west-2b"
  }, {
  name              = "db1"
  cidr_block        = "10.112.4.0/24"
  availability_zone = "us-west-2a"
  }, {
  name              = "db2"
  cidr_block        = "10.112.5.0/24"
  availability_zone = "us-west-2b"
}]


web_security_group = {
  description = "open web ports"
  name        = "web"
  ingress_rules = [{
    cidr_ipv4   = "0.0.0.0/0"
    description = "open 80"
    from_port   = 80
    ip_protocol = "tcp"
    name        = "http"
    to_port     = 80
    }, {
    cidr_ipv4   = "0.0.0.0/0"
    description = "https"
    from_port   = 443
    ip_protocol = "tcp"
    name        = "https"
    to_port     = 443
    }, {
    cidr_ipv4   = "0.0.0.0/0"
    description = "ssh"
    from_port   = 22
    ip_protocol = "tcp"
    name        = "ssh"
    to_port     = 22
  }]
  egress_rules = [{
    cidr_ipv4   = "0.0.0.0/0"
    description = "openall"
    from_port   = -1
    ip_protocol = "-1"
    name        = "openall"
    to_port     = -1
  }]
}


app_security_group = {
  description = "open app ports"
  name        = "app"
  ingress_rules = [{
    cidr_ipv4   = "0.0.0.0/0"
    description = "open 8080"
    from_port   = 8080
    ip_protocol = "tcp"
    name        = "http"
    to_port     = 8080
    }, {
    cidr_ipv4   = "0.0.0.0/0"
    description = "ssh"
    from_port   = 22
    ip_protocol = "tcp"
    name        = "ssh"
    to_port     = 22
  }]
  egress_rules = [{
    cidr_ipv4   = "0.0.0.0/0"
    description = "openall"
    from_port   = -1
    ip_protocol = "-1"
    name        = "openall"
    to_port     = -1
  }]
}


db_security_group = {
  description = "open app ports"
  name        = "db"
  ingress_rules = [{
    cidr_ipv4   = "0.0.0.0/0"
    description = "open 3306"
    from_port   = 3306
    ip_protocol = "tcp"
    name        = "http"
    to_port     = 3306
    }, {
    cidr_ipv4   = "0.0.0.0/0"
    description = "ssh"
    from_port   = 22
    ip_protocol = "tcp"
    name        = "ssh"
    to_port     = 22
  }]
  egress_rules = [{
    cidr_ipv4   = "0.0.0.0/0"
    description = "openall"
    from_port   = -1
    ip_protocol = "-1"
    name        = "openall"
    to_port     = -1
  }]
}

