variable "ingress_rules" {
    type = map(object({
      from_port = number
      to_port  = number
      protocol = string
      cidr_blocks = list(string)
      description = string
    }))
    default = {
      "openssh" = {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description  = "openssh"
        
      },
      "openhttp" = {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description  = "open http"
        
      }
    }
  
}