# modules/ec2-datadisk/main.tf

resource "aws_ebs_volume" "datadisk" {
  count = var.create_datadisk ? 1 : 0

  availability_zone = var.availability_zone
  size              = var.volume_size
  type              = var.volume_type
  encrypted         = var.encrypted
  kms_key_id         = var.kms_key_id

  tags = merge(
    var.tags,
    {
      Name = "datadisk-${var.instance_id}"
    }
  )
}

resource "aws_volume_attachment" "datadisk" {
  count = var.create_datadisk ? 1 : 0

  device_name = var.device_name
  volume_id   = aws_ebs_volume.datadisk[0].id
  instance_id = var.instance_id
}
