#---instance/main.tf---#

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ec2-ami.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  count         = var.instance_count
}

data "aws_ami" "ec2-ami" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-*-kernel-*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}