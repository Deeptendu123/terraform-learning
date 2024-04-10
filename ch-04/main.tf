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

resource "aws_instance" "example" {
  ami           = var.ec2_ami_id
  instance_type = "t2.micro"
  subnet_id = "subnet-03a4aa540d5f78092"
  tags = var.ec2_tags
}
