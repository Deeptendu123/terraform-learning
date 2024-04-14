terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

// refer -> https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/2.8.0
module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.8.0"

  name = "My EC2"
  ami = var.ec2_ami_id
  instance_count         = 1
  instance_type = "t2.micro"
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id = var.subnet_id

  tags = var.ec2_tags
}
