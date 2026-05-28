# modules/ec2-datadisk/variables.tf

variable "create_datadisk" {
  type    = bool
  default = false
}

variable "instance_id" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "volume_size" {
  type    = number
  default = 50
}

variable "volume_type" {
  type    = string
  default = "gp3"
}

variable "device_name" {
  type    = string
  default = "/dev/sdf"
}

variable "encrypted" {
  type    = bool
  default = true
}

variable "kms_key_id" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
