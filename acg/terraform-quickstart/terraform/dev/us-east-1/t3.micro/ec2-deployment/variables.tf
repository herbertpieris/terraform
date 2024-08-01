#---root/variables.tf---#

variable "az" {
  type    = string
  default = "us-east-1a"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}