resource "aws_security_group" "acessos" {
  name        = "acessos"
  description = "acessos"

  ingress {
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["200.96.20.48/32"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["200.96.20.48/32"]
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["200.96.20.48/32"]
  }

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["200.96.20.48/32"]
  }

  ingress {
    from_port        = 5986
    to_port          = 5986
    protocol         = "tcp"
    cidr_blocks      = ["200.96.20.48/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "acessos"
  }
}