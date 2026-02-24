resource "aws_instance" "example" {
  #for_each = var.instances
  ami           = "ami-0220d79f3f480ecf5"
  #instance_type = each.value

  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "Terraform"
    project = "roboshop"

  }
}

resource "aws_security_group" "allow_tls"{
  name = "allow-all-terraform"  # This is for aws account
  description="Allow all traffic from inbound and outbound rules"

  egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]

  }
#ingress is going to be a special variable
dynamic "ingress"{
     
    for_each = (var.ingress_rules)
  content{

    from_port = ingress.value.port
    to_port = ingress.value.port
    protocol = "tcp"
    cidr_blocks = ingress.value.cidr_blocks
    description = ingress.value.description
  }
  }

  tags = {
    name = "allow-all-terraform"
  }


}