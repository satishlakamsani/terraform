resource "aws_instance" "example" {
  ami           = local.ami_id 
  instance_type = local.instance_type
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags ={
    Name =  local.instance_name
    Project = "roboshop"


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

  ingress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    name = "allow-all-terraform"
  }


}