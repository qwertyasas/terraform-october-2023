variable region {
  type        = string
  default     = "us-east-2"
  description = "Provider region"
}
variable instance_tenancy {
  type        = string
  default     = "default"
  description = "instance tenancy"
}

variable vpc_cidr_block {
  type        = string
  default     = "10.0.0.0/16"
  description = "Vpc cidr block"
}
variable main1_subnet_cidr_block {
  type        = string
  default     = "10.0.1.0/24"
  description = "Subnet1 cidr block"
}
variable main2_subnet_cidr_block {
  type        = string
  default     = "10.0.2.0/24"
  description = "Subnet2 cidr block"
}
variable main3_subnet_cidr_block {
  type        = string
  default     = "10.0.3.0/24"
  description = "Subnet3 cidr block"
}
variable route_table_cidr_block {
  type        = string
  default     = "0.0.0.0/0"
  description = "route table cidr block"
}
variable ami {
  type        = string
  default     = "ami-0ee4f2271a4df2d7d"
  description = "Ami used to create instance"
}
variable instance_type {
  type        = string
  default     = "t2.small"
  description = "description"
}




