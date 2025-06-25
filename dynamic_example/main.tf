data "aws_vpc" "default" {
    default = true
}

resource "aws_security_group" "test" {
    vpc_id = data.aws_vpc.default.id
    name = "dynamic"
    description = "learning dynamic"
    # ingress {
    #     from_port = 22
    #     to_port = 22
    #     protocol = "tcp"
    #     cidr_blocks = "0.0.0.0/0"
    #     description = "open ssh"
    # }
    # ingress {
    #     from_port = 80
    #     to_port = 80
    #     protocol = "tcp"
    #     cidr_blocks = "0.0.0.0/0"
    #     description = "open ssh"
    # }

    dynamic "ingress" {
        for_each = var.ingress_rules
        content {
          from_port = ingress.value.from_port
          to_port = ingress.value.to_port
          protocol = ingress.value.protocol
          cidr_blocks = ingress.value.cidr_blocks
          description = ingress.value.description

        }
      
    }
  
}