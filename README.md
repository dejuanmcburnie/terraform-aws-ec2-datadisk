# terraform-aws-ec2-datadisk
infra tf module

data "aws_instance" "target" {
  instance_id = var.instance_id
}

module "ec2_datadisk" {
  source = "./modules/ec2-datadisk"

  create_datadisk   = var.create_datadisk
  instance_id       = var.instance_id
  availability_zone = data.aws_instance.target.availability_zone

  volume_size = 100
}
