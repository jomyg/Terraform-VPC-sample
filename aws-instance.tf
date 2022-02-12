#################################### security group creation - bastion server ####################################

resource "aws_security_group" "bastion" {
  name        = "bastion-sg"
  description = "allow 22 from all IPs"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description      = ""
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [ "0.0.0.0/0" ]
    ipv6_cidr_blocks = [ "::/0" ]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

tags = {
    Name = "${var.project}-bastion-sg"
    Project = var.project
  }
}

#################################### creation of bastion server in public2 ####################################

resource "aws_instance" "bastion" {
  ami           = var.ami
  instance_type = var.type
  associate_public_ip_address = true
  availability_zone = data.aws_availability_zones.az.names[1]
  subnet_id = aws_subnet.public2.id
  key_name = var.key
  vpc_security_group_ids = [aws_security_group.bastion.id]

tags = {
    Name = "${var.project}-bastion-server"
    Project = var.project
  }
}
