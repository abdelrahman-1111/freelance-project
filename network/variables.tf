variable vpc_region {
  type        = string
  description = "the region where the subnets will be created"
}
variable "vpc_CIDR" {
  type    = string
  default = "10.0.0.0/16"
}
variable "public_subnet1_CIDR" {
  type    = string
  default = "10.0.1.0/24"
}

variable "private_subnet1_CIDR" {
  type    = string
  default = "10.0.3.0/24"
}
