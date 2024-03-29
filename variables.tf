variable "inst_size" {}
variable "inst_name" {}
variable "inst_key_name" {}
variable "inst_sec_group_id" {}
variable "inst_subnet_id" {}
variable "inst_ami" {}

variable "inst_count" {
  default = "1"
}

variable "inst_common_tags" {
  type = map(string)
  default = {
    "Description" : "Computing Tier",
    "Owner" : "DB Team"
  }
}