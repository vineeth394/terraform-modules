variable "ami_id" {
  description = "ami id of the EC2-instance"
  type = string
#   default = "ami-0d682f26195e9ec0f"
}

variable "instance_type" {
  description = "mention the type of EC2-instance"
  type = string
#   default = "t2.micro"
}

variable "vpc_id" {
  description = "type the vpc-id"
  type = string
#   default = "vpc-01a28f5952758d1a0"
}

variable "port" {
  description = "SSH port-value"
  type = number
#   default = 22
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "security_groupname" {
  type = string
  description = "to specify the security group"
}


