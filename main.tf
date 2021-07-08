provider "aws" {
  region = var.region
}

module "ec2_demo" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = var.inst_name
  instance_count         = var.inst_count

  ami                    = var.inst_ami
  instance_type          = var.inst_size
  key_name               = var.inst_key_name
  vpc_security_group_ids = [var.inst_sec_group_id]
  subnet_id              = var.inst_subnet_id
  associate_public_ip_address = true

  tags = var.inst_common_tags
}