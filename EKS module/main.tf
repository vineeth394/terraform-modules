provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "terraformstate-remote-bucket"
    key = "state.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

module "ec2_instance" {
    source = "./terraform_modules/ec2_instance"
    ami_id = "var.ami_id"
    inst_type = "t2.micro"
    vpc_id ="vpc-01a28f5952758d1a0"
    port ="22"
    cidr_block ="0.0.0.0/0"
    security_groupname ="module_sg"
}