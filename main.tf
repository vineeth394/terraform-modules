resource "aws_instance" "ec2-instance" {
  ami = "var.ami_id"
  instance_type = "var.instance_type"
  vpc_security_group_ids = [aws_security_group.mysg.id]
}

resource "aws_security_group" "mysg" {
  name = var.security_groupname
  description = "allow ssh traffic"
  vpc_id = var.vpc_id
  ingress {
    description = "allow inbound ssh traffic"
    from_port = var.port
    to_port = var.port
    protocol = "tcp"
    cidr_blocks = [var.cidr_block]
  }

  tags = {
    name = "ssh-allow"
  }
}

