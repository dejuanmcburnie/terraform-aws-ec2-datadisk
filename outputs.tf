# modules/ec2-datadisk/outputs.tf

output "volume_id" {
  value = var.create_datadisk ? aws_ebs_volume.datadisk[0].id : null
}

output "attachment_id" {
  value = var.create_datadisk ? aws_volume_attachment.datadisk[0].id : null
}
